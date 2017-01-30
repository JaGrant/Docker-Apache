#!/bin/bash
sudo docker run --name=webserver -d -p 80:80 -v "$PWD/www-data":/var/www/html webserver
