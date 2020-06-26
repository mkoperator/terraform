//generic array iterating
resource "null_resource" "nodes" {
    // set our counter
    count = length(var.nodes)
    
    // triggers that would cause a reload 
    // on change of the private key or script contents
    // in addition to all input var changes
    triggers = {
        private_key = file(var.ssh_key_path)
        script  = file(var.script_path)

        // adding because this was easiest way to output
        name        = var.nodes[count.index].name
        internal    = var.nodes[count.index].internal
        external    = var.nodes[count.index].external
    }

    // connect to our node
    connection {
        host        = var.nodes[count.index]["external"]
        type        = "ssh"
        user        = var.ssh_user   
        private_key = file(var.ssh_key_path)  
        port        = var.ssh_port  
    }
    // lets copy our script over to the node.
    provisioner "file" {
        source      = var.script_path
        destination = "/tmp/script.sh"
    }
	// execute our script
	provisioner "remote-exec" {
        inline      = [
            "chmod +x /tmp/script.sh",
            "/tmp/script.sh args",   
        ]
    }
}
