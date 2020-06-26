resource "rancher2_cluster" "rke-cluster" {
  name = var.cluster_name
  description = var.cluster_description
  rke_config {
    network {
      plugin = "canal"
    }
    services {
      etcd {
        creation = "6h"
        retention = "24h"
      }
    }
  }
}