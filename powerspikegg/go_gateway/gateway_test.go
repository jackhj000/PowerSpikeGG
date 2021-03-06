package main

import (
	"fmt"
	"net"
	"net/http"
	"net/http/httptest"
	"testing"

	"golang.org/x/net/context"
	"google.golang.org/grpc"
	"google.golang.org/grpc/reflection"

	fetcherpb "powerspike.gg/powerspikegg/rawdata/fetcher/service_gopb"
	lolpb "powerspike.gg/powerspikegg/rawdata/public/leagueoflegends_gopb"
)

type mockMatchFetcherServer struct {
	fetcherpb.MatchFetcherServer

	server *grpc.Server

	// matchRequests contains the match request sent by the client
	matchRequests []*fetcherpb.MatchRequest
	// matchRequests contains the summoner request sent by the client
	summonerRequests []*lolpb.Summoner
	// aggregationRequests contains the aggregation request sent by the client
	aggregationRequests []*fetcherpb.Query

	// matchResponse contains the response to send back to the client for a match
	matchResponse *lolpb.MatchReference
	// matchResponse contains the response to send back to the client for a summoner (stream of match)
	summonerResponse []*lolpb.MatchReference
	// matchResaggregationResponseponse contains the response to send back to the client for an aggregation request
	aggregationResponse *fetcherpb.AggregatedStatistics

	// err contains an eventual error to throw back to the client
	err error
	// address contains the server address
	address string
}

func newMockMatchFetcherServer() (*mockMatchFetcherServer, error) {
	lis, err := net.Listen("tcp", "127.0.0.1:0")
	if err != nil {
		return nil, fmt.Errorf("failed to listen: %v", err)
	}
	mock := &mockMatchFetcherServer{
		address: lis.Addr().String(),
	}
	mock.server = grpc.NewServer()
	fetcherpb.RegisterMatchFetcherServer(mock.server, mock)
	// Register reflection service on gRPC server.
	reflection.Register(mock.server)

	go func(s *grpc.Server, l net.Listener) {
		s.Serve(l)
	}(mock.server, lis)
	return mock, nil
}

// Match is a mock of the match endpoint.
func (s *mockMatchFetcherServer) Match(_ context.Context, req *fetcherpb.MatchRequest) (*lolpb.MatchReference, error) {
	s.matchRequests = append(s.matchRequests, req)
	if s.err != nil {
		return nil, s.err
	}

	return s.matchResponse, nil
}

// Resets the mock requests sent list
func (s *mockMatchFetcherServer) reset() {
	s.matchRequests = nil
	s.summonerRequests = nil
	s.aggregationRequests = nil
}

// UpdateSummoner is a mock of the match endpoint.
func (s *mockMatchFetcherServer) UpdateSummoner(req *lolpb.Summoner, resp fetcherpb.MatchFetcher_UpdateSummonerServer) error {
	s.summonerRequests = append(s.summonerRequests, req)
	if s.err != nil {
		return s.err
	}

	for _, response := range s.summonerResponse {
		resp.Send(response)
	}

	return nil
}

// AverageStatistics is a mock of the match endpoint.
func (s *mockMatchFetcherServer) AverageStatistics(ctx context.Context, req *fetcherpb.Query) (*fetcherpb.AggregatedStatistics, error) {
	s.aggregationRequests = append(s.aggregationRequests, req)
	if s.err != nil {
		return nil, s.err
	}

	return s.aggregationResponse, nil
}

// TestGateway ensures that the gateway is correctly parsing parameters and answering to API requests.
func TestGateway(t *testing.T) {
	// TODO: use sub-tests with init and teardown functions to make test file clearer
	summonerTT := []struct {
		name             string
		serverRequest    string
		serverResponse   []*lolpb.MatchReference
		expectedResponse string
		expectedStatus   int
	}{
		{
			name:          "simple summoner query",
			serverRequest: "/api/summoner/Rangork/EUW",
			serverResponse: []*lolpb.MatchReference{
				{
					Id: 3122561986,
				},
				{
					Id: 3122561984,
				},
			},
			expectedResponse: "{\"results\": [{\"id\":3.122561986e+09,\"timestamp\":0,\"version\":\"\",\"plateformId\":\"\",\"region\":\"BR\",\"queueType\":\"TEAM_BUILDER_RANKED_SOLO\",\"season\":\"SEASON2017\"},{\"id\":3.122561984e+09,\"timestamp\":0,\"version\":\"\",\"plateformId\":\"\",\"region\":\"BR\",\"queueType\":\"TEAM_BUILDER_RANKED_SOLO\",\"season\":\"SEASON2017\"}]}",
			expectedStatus:   http.StatusOK,
		},
		// TODO: add some failing tests
	}

	matchTt := []struct {
		name             string
		serverRequest    string
		serverResponse   *lolpb.MatchReference
		expectedResponse string
		expectedStatus   int
	}{
		{
			name:          "simple match query",
			serverRequest: "/api/match/3122561986/EUW",
			serverResponse: &lolpb.MatchReference{
				Id: 3122561986,
			},
			expectedResponse: "{\"id\":3.122561986e+09,\"timestamp\":0,\"version\":\"\",\"plateformId\":\"\",\"region\":\"BR\",\"queueType\":\"TEAM_BUILDER_RANKED_SOLO\",\"season\":\"SEASON2017\"}",
			expectedStatus:   http.StatusOK,
		},
		// TODO: add some failing tests
	}

	aggregationTt := []struct {
		name             string
		serverRequest    string
		serverResponse   *fetcherpb.AggregatedStatistics
		expectedResponse string
		expectedStatus   int
	}{
		{
			name:          "simple aggregation query",
			serverRequest: "/api/aggregation/SILVER/120/23510386/EUW",
			serverResponse: &fetcherpb.AggregatedStatistics{
				MatchPool: 3,
				Stats: &lolpb.PlayerStatistics{
					Kills:   23,
					Deaths:  3,
					Assists: 6,
				},
			},
			expectedResponse: "{\"matchPool\":3,\"stats\":{\"kills\":23,\"deaths\":3,\"assists\":6,\"championLevel\":0,\"totalHeal\":0,\"largestCriticalStrike\":0,\"goldEarned\":0,\"goldSpent\":0,\"minionsKilled\":0,\"neutralMinionsKilled\":0,\"neutralMinionsKilledEnnemyJungle\":0,\"neutralMinionsKilledTeamJungle\":0,\"sightWardsBought\":0,\"visionWardsBought\":0,\"wardsPlaced\":0,\"wardsKilled\":0,\"doubleKills\":0,\"tripleKills\":0,\"quadraKills\":0,\"pentaKills\":0,\"killingSprees\":0,\"largestKillingSpree\":0,\"largestMultiKill\":0,\"inhibitorKills\":0,\"towerKills\":0,\"firstBloodAssist\":false,\"firstBloodKill\":false,\"firstInhibitorKill\":false,\"firstTowerAssist\":false,\"firstTowerKill\":false,\"totalCrowdControl\":0,\"totalUnitsHealed\":0}}", // TODO: verify
			expectedStatus:   http.StatusOK,
		},
	}

	matchFetcherServer, err := newMockMatchFetcherServer()
	if err != nil {
		t.Fatalf("unable to create mock match fetcher server: %v", err)
	}
	defer matchFetcherServer.server.Stop()

	//computationClient := newMockMatchComputationServer() // TODO(archangel): computation tests

	conn, err := grpc.Dial(matchFetcherServer.address, grpc.WithInsecure())
	if err != nil {
		t.Fatalf("unable to connect to the mock match fetcher server: %v", err)
	}
	defer conn.Close()

	matchFetcherClient := fetcherpb.NewMatchFetcherClient(conn)
	//computationClient := computation.NewMatchComputationClient(conn) // TODO(archangel): computation tests

	lis, err := net.Listen("tcp", "127.0.0.1:0")
	if err != nil {
		t.Fatalf("failed to listen: %v", err)
	}

	s := createServer(matchFetcherClient, nil)

	go func(s *http.Server, l net.Listener) {
		s.Serve(l)
		fmt.Printf("creating server on: %s", s.Addr)
	}(s.server, lis)

	for _, testValue := range matchTt {
		matchFetcherServer.reset()
		matchFetcherServer.matchResponse = testValue.serverResponse

		req, err := http.NewRequest("GET", s.server.Addr+testValue.serverRequest, nil)
		if err != nil {
			t.Fatal(err)
		}

		rr := httptest.NewRecorder()

		s.server.Handler.ServeHTTP(rr, req)

		// Check the status code is what we expect.
		if status := rr.Code; status != testValue.expectedStatus {
			t.Errorf("handler returned wrong status code: got %v want %v", status, testValue.expectedStatus)
		}

		// Check the response body is what we expect.
		if rr.Body.String() != testValue.expectedResponse {
			t.Errorf("handler returned unexpected body: got %v want %v", rr.Body.String(), testValue.expectedResponse)
		}
	}

	// TODO: generify
	for _, testValue := range summonerTT {
		matchFetcherServer.reset()
		matchFetcherServer.summonerResponse = testValue.serverResponse

		req, err := http.NewRequest("GET", s.server.Addr+testValue.serverRequest, nil)
		if err != nil {
			t.Fatal(err)
		}

		rr := httptest.NewRecorder()

		s.server.Handler.ServeHTTP(rr, req)

		// Check the status code is what we expect.
		if status := rr.Code; status != testValue.expectedStatus {
			t.Errorf("handler returned wrong status code: got %v want %v", status, testValue.expectedStatus)
		}

		// Check the response body is what we expect.
		if rr.Body.String() != testValue.expectedResponse {
			t.Errorf("handler returned unexpected body: got %v want %v", rr.Body.String(), testValue.expectedResponse)
		}
	}

	// TODO: generify
	for _, testValue := range aggregationTt {
		matchFetcherServer.reset()
		matchFetcherServer.aggregationResponse = testValue.serverResponse

		req, err := http.NewRequest("GET", s.server.Addr+testValue.serverRequest, nil)
		if err != nil {
			t.Fatal(err)
		}

		rr := httptest.NewRecorder()

		s.server.Handler.ServeHTTP(rr, req)

		// Check the status code is what we expect.
		if status := rr.Code; status != testValue.expectedStatus {
			t.Errorf("handler returned wrong status code: got %v want %v", status, testValue.expectedStatus)
		}

		// Check the response body is what we expect.
		if rr.Body.String() != testValue.expectedResponse {
			t.Errorf("handler returned unexpected body: got %v want %v", rr.Body.String(), testValue.expectedResponse)
		}
	}

}
