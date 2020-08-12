// output our nodes for the next module or to view    
output "node" {
    value = null_resource.nodes[*]
}