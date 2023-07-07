#!/bin/bash

sudo docker stop my-flask-app-container
sudo docker rm my-flask-app-container

# Pull the latest version of the image from Docker Hub
sudo docker pull paragpatil01/my-flask-app:latest

# Run the container
sudo docker run -p 8080:80 --name my-flask-app-container paragpatil01/my-flask-app:latest
