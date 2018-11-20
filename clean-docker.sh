#!/bin/bash

# Stop all containers

#docker stop $(docker ps -q)

docker ps -a --format "{{.ID}}" | xargs docker stop



# Delete all containers

#docker rm $(docker ps -a -q)

docker ps -a --format "{{.ID}}" | xargs docker rm



# Delete all images

#docker rmi $(docker images -q)

docker images -q --format "{{.ID}}" | xargs docker rmi
