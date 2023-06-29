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

# add Docker's official GPG key
sudo install -m 0755 -d /etc/apt/keyrings \
&& curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg \
&& sudo chmod a+r /etc/apt/keyrings/docker.gpg

# set up the repository
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# install Docker CE
sudo apt-get update && sudo apt-get install -y \
  docker-ce \
  docker-ce-cli \
  containerd.io \
  docker-buildx-plugin \
  docker-compose-plugin

# verify installation by running one container
sudo docker run --name="hello-world" -d hello-world

if [[ "$(sudo docker ps -a | grep "hello-world")" ]]; then

  echo && echo "Docker has been installed successfully!"

fi