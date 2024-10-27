#!/bin/bash

# Install Docker Community Edition
# this installation must be ran with root permissions available

# Make sure that the OS is up-to-date
apt-get update && apt-get upgrade -y

# Initial setup, getting dependencies
sudo apt-get install -y \
  ca-certificates \
  curl \
  gnupg \
  lsb-release

# Add Docker's official GPG key, also add repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker CE
apt-get update && apt-get install -y \
  docker-ce \
  docker-ce-cli \
  containerd.io

# Verify installation by running one container
docker run --name="hello-world" -d hello-world

if [ "$( docker container inspect -f '{{.State.Running}}' 'hello-world' )" = "true" ]; then
  echo && echo "hello-world container has been found. Congratiulations, Docker has been installed successfully!"
fi