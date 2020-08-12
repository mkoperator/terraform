# SSH user
variable "ssh_user" {
  type = string
  default = "ubuntu"
}

# Path to private key
variable "ssh_key_path" {
  type = string
  default = "files/key.pem"
}

# SSH port
variable "ssh_port" {
  type = number
  default = 22
}

# lifecycle scripts
# custom templated scripts can be executed against the node, specify the script location.
variable "lifecycle-scripts" {
  type = list(object({
    ip = string
    name = string
  }))
  default = [
    {
      stage = "default"
      script_path = "node"
    }
  ]
}



# Controlplane Node Array
variable "controlplane-nodes" {
  type = list(object({
    ip = string
    name = string
  }))
  default = [
    {
      ip = "127.0.0.1"
      name = "node"
    }
  ]
}
# Worker Nodes Array
variable "worker-nodes" {
  type = list(object({
    ip = string
    name = string
  }))
  default = [
    {
      ip = "127.0.0.1"
      name = "node"
    }
  ]
}
