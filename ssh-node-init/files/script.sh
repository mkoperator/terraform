#!/bin/bash
echo "Node config started."

# get docker
sudo apt-get -qq update
sudo apt-get -qq install docker.io -y
# add ubuntu to docker user
sudo usermod -aG docker ubuntu

echo "Node config complete."