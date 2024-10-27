#!/bin/bash

# Install Docker Community Edition
# this installation must be ran with root permissions available

# prepare, make sure that the OS is up-to-date
sudo apt-get update && sudo apt-get upgrade -y

# setup the repository
sudo apt-get install -y \
  ca-certificates \
  curl \
  gnupg \
  lsb-release

# add Docker's official GPG key, also add repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# install Docker CE
sudo apt-get update && sudo apt-get install -y \
  docker-ce \
  docker-ce-cli \
  containerd.io

# verify installation by running one container
sudo docker run --name="hello-world" -d hello-world

if [[ "$(sudo docker ps -a | grep "hello-world")" ]]; then

  echo && echo "Docker has been installed successfully!"

fi