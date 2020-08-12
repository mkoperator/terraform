// output our k3s cluster object
output "k3s-cluster" {
    value = null_resource.k3s
}

// output array of control plane nodes
output "k3s-controlplane" {
    value = null_resource.controlplane-nodes[*]
}

// output array of worker nodes
output "k3s-workers" {
    value = null_resource.worker-nodes[*]
}