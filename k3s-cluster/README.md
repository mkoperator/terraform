# K3s Cluster - WIP
Object to handle setup and break down of k3s as well as some state maintenance.

## Original Design Outline
```
Terraform
	Main/
		variables
			global config options
				connection settings
				k3s config
				k3s raw options
				rancher options
			control-plane options
				number of nodes
				node connection overwrite
				node raw init script
			control-plane node array
			array of worker pools
				worker node config options
				worker node array
		output
			k3s object with above variables 
			something that gets me back the k3s kubeconfig as a variable or scp it up.
	Modules/
		ssh-node-init/
```

## Flow
Determine HA and or Single Node and External or Internal DB.
Loop through master and or arrays of worker nodes, logging in via ssh and setting up k3s server and nodes.
After the first master, retrieve k3s server key and place in tf variable available in k3s object. In each loop it uploads a script file up to the each node. That file is static now but could be templated.
