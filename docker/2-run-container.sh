#!/bin/bash

# This file builds and runs a docker container based on a docker image.
# It publishes a nbgrader container port to a host port.
# It mounts the home directory for backups.



# Uncomment for disabling script (as it has to be executed only one time)

#echo "Script disabled." ; exit



# Configuration

IMAGE_NAME="nbgjava"
TAG_NAME="latest"

CONTAINER_NAME="nbgjava"

PORT_HOST="443"
PORT_CONTAINER="8000"

MOUNT_DIR_HOST="/mnt/nbgjava"
MOUNT_DIR_CONTAINER="/home/nbgadmin"



# Execution

docker run \
-t -d \
-p $PORT_HOST:$PORT_CONTAINER \
-v $MOUNT_DIR_HOST:$MOUNT_DIR_CONTAINER \
--name $CONTAINER_NAME \
$IMAGE_NAME:$TAG_NAME



# Restore admin home

docker exec $CONTAINER_NAME mkdir /home/nbgadmin
docker exec $CONTAINER_NAME cp -R /home/.nbgadmin/. /home/nbgadmin/
docker exec $CONTAINER_NAME chown -R nbgadmin:nbgadmin /home/nbgadmin



echo ""
echo "Please change the passwords for users nbgadmin and nbguser manually"
echo "usermod --password \$(openssl passwd -1 <PSW>) <USR>"
echo ""