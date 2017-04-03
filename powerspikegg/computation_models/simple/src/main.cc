#include "graph.h"

#include <vector>
#include <iostream>
#include "tensorflow/cc/ops/standard_ops.h"
#include "tensorflow/cc/client/client_session.h"
#include "tensorflow/core/platform/env.h"

#include "tensorflow/core/lib/io/path.h"
#include "tensorflow/core/lib/monitoring/counter.h"

#include "powerspikegg/computation-models/utils/src/graph.h"

/**
 * This Module aim to demonstrate how to load the statistic model generated by the python module and execute it
 **/
int main() {
    tensorflow::Scope root = tensorflow::Scope::NewRootScope();

    // Load the graph into the scope  
    computation::utils::LoadGraphFromFile(root, "/tmp/frozen_model.pb");

    // This list the node in the graph (for debugging purpose)
    std::cout << root.graph()->num_nodes() << std::endl;

    for (tensorflow::Node* node : root.graph()->nodes()) {
        std::cout << node->name() << std::endl;
    }

    // Find a node named logits (for the output)
    //tensorflow::Node* node = computation::utils::FindNodeWithNameInGraph(root.graph(), "logits");
    tensorflow::Output output = computation::utils::GenerateOutputFromNode(root.graph(), "logits");//tensorflow::Output(node);

    // Find a node named placeholder (for the input)
    tensorflow::Node* node2 = computation::utils::FindNodeWithNameInGraph(
            root.graph(), "placeholder");
    tensorflow::Output output2 = tensorflow::Output(node2);

    tensorflow::ClientSession session(root);

    std::vector<tensorflow::Tensor> outputs;
    TF_CHECK_OK(session.Run({{output2, {{1.f,2.f}} }}, {output}, &outputs));

    LOG(INFO) << outputs[0].matrix<float>();

    return 0;
}