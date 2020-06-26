# rancher server url (not api path)
variable "rancher_url" {
  type = string
  default = ""
}

# Rancher Token
variable "rancher_token" {
  type = string
  default = ""
}

# Self Signed Cert?
variable "self_signed" {
  type = bool
  default = true
}

# Cluster Name
variable "cluster_name" {
  type = string
  default = "rke1"
}

# Cluster Description
variable "cluster_description" {
  type = string
  default = "A Kubernetes Cluster."
}