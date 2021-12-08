#!/bin/bash

if [[ "$(getent group docker)" ]]; then
  echo "Docker group exists.."
else
  echo "Creating Docker group.."
  sudo groupadd docker
fi

echo "Which user will be in the Docker group for post installation? " "$user"
read -r user

sudo usermod -aG docker "$user"