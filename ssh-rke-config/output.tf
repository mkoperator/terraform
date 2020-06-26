// output our nodes for the next module or to view    
output "node_command" {
    value = rancher2_cluster.rke-cluster.cluster_registration_token[0]["node_command"]
}