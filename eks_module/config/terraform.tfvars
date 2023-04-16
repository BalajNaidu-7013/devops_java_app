
aws_eks_cluster_config = {

      "demo-cluster" = {

        eks_cluster_name         = "demo-cluster1"
        eks_subnet_ids = ["subnet-07b4c1fe69a990fee","subnet-0d8039dd0ae090f27","subnet-058bb2d095e63fff7","subnet-0da7aed1c54e44e4a"]
        tags = {
             "Name" =  "demo-cluster"
         }  
      }
}

eks_node_group_config = {

  "node1" = {

        eks_cluster_name         = "demo-cluster"
        node_group_name          = "myeksnode"
        nodes_iam_role           = "eks-node-group-general1"
        node_subnet_ids          =  ["subnet-07b4c1fe69a990fee","subnet-0d8039dd0ae090f27","subnet-058bb2d095e63fff7","subnet-0da7aed1c54e44e4a"]

        tags = {
             "Name" =  "node1"
         } 
  }
}