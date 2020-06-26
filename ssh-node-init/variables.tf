# SSH user
variable "ssh_user" {
  type = string
  default = "ubuntu"
}

# Path to private key
variable "ssh_key_path" {
  type = string
  default = "private_key.pem"
}

# SSH port
variable "ssh_port" {
  type = number
  default = 22
}

# Path to script to be executed on remote machine
variable "script_path" {
  type = string
  default = "files/script.sh"
}

# Nodes array
variable "nodes" {
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