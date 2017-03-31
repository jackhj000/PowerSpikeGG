import json
import glob
import os
import unittest

from collections import deque

from powerspikegg.lib.mongodb import wrapper
from powerspikegg.rawdata.public import constants_pb2
from powerspikegg.rawdata.fetcher import aggregator
from powerspikegg.rawdata.fetcher import service_pb2

class AggregatorTest(unittest.TestCase):
    """Set of tests checking if aggregator works correctly.

    Aggregator is a pretty sensitive function of the fetcher. We run multiple
    tests on it ensuring results are as expected.
    """

    @classmethod
    def setUpClass(cls):
        """Start a fake mongodb server fed with a set of matches."""
        cls.server = wrapper.create_mongo_server()
        cls.client = cls.server.client
        cls.collection = cls.client.test.matches  # Setup a test collection.

        # Feed the mongo server with a list of matches
        this_path = os.path.dirname(os.path.realpath(__file__))
        json_samples = glob.glob(os.sep.join([this_path, "samples", "*.json"]))
        for filepath in json_samples:
            with open(filepath) as f:
                cls.collection.insert_one(json.load(f))

    @classmethod
    def tearDownClass(cls):
        """Stop the fake mongodb server."""
        cls.server.shutdown()

    def test_summoner_filtering_only_name(self):
        """Tests matches where "Foo bar" played are selectionned."""
        query = service_pb2.Query(summoner=constants_pb2.Summoner(
            name="Foo bar"))

        generator = aggregator.SearchMatchesMatchingQuery(self.collection,
            query)
        self.assertEquals(len(deque(generator)), 2)

    def test_summoner_filtering_only_id(self):
        """Tests matches where summoner 1337 played are selectionned."""
        query = service_pb2.Query(summoner=constants_pb2.Summoner(
            id=1337))

        generator = aggregator.SearchMatchesMatchingQuery(self.collection,
            query)
        self.assertEquals(len(deque(generator)), 1)

    def test_summoner_filtering_both(self):
        """Tests matches where summoner Foo bar of id 4242 are selectionned."""
        query = service_pb2.Query(summoner=constants_pb2.Summoner(
            name="Foo bar", id=4242))

        generator = aggregator.SearchMatchesMatchingQuery(self.collection,
            query)
        self.assertEquals(len(deque(generator)), 2)

    def test_summoner_filtering_both_invalid(self):
        """Tests search with invalid pair summoner id/name are empty."""
        query = service_pb2.Query(summoner=constants_pb2.Summoner(
            name="Invalid name", id=4242))

        generator = aggregator.SearchMatchesMatchingQuery(self.collection,
            query)
        self.assertEquals(len(deque(generator)), 0)

        query = service_pb2.Query(summoner=constants_pb2.Summoner(
            name="Foo bar", id=123456))  # Invalid ID

        generator = aggregator.SearchMatchesMatchingQuery(self.collection,
            query)
        self.assertEquals(len(deque(generator)), 0)

    def test_league_filtering(self):
        """Tests matches can be filtered by league."""
        query = service_pb2.Query(league=constants_pb2.BRONZE)

        generator = aggregator.SearchMatchesMatchingQuery(self.collection,
            query)
        self.assertEquals(len(deque(generator)), 2)

        query = service_pb2.Query(league=constants_pb2.GOLD)

        generator = aggregator.SearchMatchesMatchingQuery(self.collection,
            query)
        self.assertEquals(len(deque(generator)), 3)

    def test_champion_filtering(self):
        """Tests matches can be filtered by champions."""
        query = service_pb2.Query(champion=constants_pb2.Champion(id=123))

        generator = aggregator.SearchMatchesMatchingQuery(self.collection,
            query)
        self.assertEquals(len(deque(generator)), 2)

    def test_invalid_champion_filtering(self):
        """Tests that if champion id is unspecified, exception is raised."""
        query = service_pb2.Query(champion=constants_pb2.Champion(name="foo"))

        with self.assertRaises(ValueError):
            generator = aggregator.SearchMatchesMatchingQuery(self.collection,
                query)
            deque(generator)

    def test_champion_and_league_filtering(self):
        """Tests that champion and league can be filtered both together."""
        query = service_pb2.Query(champion=constants_pb2.Champion(id=123),
            league=constants_pb2.PLATINUM)

        generator = aggregator.SearchMatchesMatchingQuery(self.collection,
            query)
        self.assertEquals(len(deque(generator)), 1)


if __name__ == "__main__":
    unittest.main()