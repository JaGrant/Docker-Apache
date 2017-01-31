#!/bin/bash
echo "Stopping and Removing Container"
sudo docker stop webserver
sudo docker rm webserver
sudo docker rmi webserver
