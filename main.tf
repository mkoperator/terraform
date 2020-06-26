// configure rancher token and get cluster info
module "ssh-rke-config" {
    source = "./ssh-rke-config"
    cluster_name = "rke1"
    rancher_url = "https://mikhail.simpleblocks.net"
    rancher_token = "token-vmp2d:m2lv5pfpvpgxxxssbcrspbdrn4ss7q6rwt5m4p6m7p4g25k9k727gk"
    self_signed = true
}

//init each node
module "ssh-node-init"  {
    source = "./ssh-node-init"
    ssh_user = "ubuntu"
    ssh_port = 22
    ssh_key_path = "./ssh-node-init/files/mikhail-personal.pem"
    script_path = "./ssh-node-init/files/script.sh"
    node_join_cluster = module.ssh-rke-config.node_command

    nodes = [
    { 
        ip: "3.235.40.201",
        name: "node1"
    },
    {
        ip: "3.235.144.146",
        name: "node2"
    },
    {
        ip: "35.175.106.76",
        name: "node3"
    }
    ]  
}