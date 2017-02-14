#!/bin/bash
echo "Stopping and removing 'webserver' docker container"
sudo docker stop webserver
sudo docker rm webserver
sudo docker rmi webserver
