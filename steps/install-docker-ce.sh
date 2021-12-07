#!/bin/bash

# Install Docker Community Edition
# this installation must be ran with root permissions

# prepare, making sure that the OS is up-to-date
sudo apt-get update && sudo apt-get upgrade -qy

# setup the repository
sudo apt-get install -qy \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# get the repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# install Docker CE
sudo apt-get update && sudo apt-get install -qy docker-ce docker-ce-cli containerd.io

# verify installation by running one container
sudo docker run --name="hello-world" -d hello-world

if [[ "$(sudo docker ps -a | grep "hello-world")" ]]; then

  echo && echo "Docker has been installed successfully!"

fi