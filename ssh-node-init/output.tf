// output our nodes for the next module or to view    
output "node" {
    value = null_resource.nodes[*]
}

output "join-code" {
    value = var.node_join_cluster
}