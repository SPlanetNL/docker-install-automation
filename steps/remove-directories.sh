#!/bin/bash

# Remove Docker configuration files
rm -rf /var/run/docker.sock \
  /etc/docker \
  /var/lib/docker \
  /etc/apparmor.d/docker \
  /var/lib/containerd \
  ~/.docker