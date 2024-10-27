#!/bin/bash

# Remove unused data
docker system prune --all --volumes

# Remove all services (if Swarm is active)
if [ "$(docker info | grep Swarm | sed 's/Swarm: //g')" == "active" ]; then
  docker service rm "$(docker service ls -q)"
fi

# Remove all containers
docker rm -f "$(docker ps -aq)"

# Remove all images
docker rmi -f "$(docker images -aq)"

# Remove all volumes
docker volume rm "$(docker volume ls -q)"