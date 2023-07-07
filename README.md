I have created a monitoring application in Python using Flask and psutil. Then, I created a Dockerfile for containerizing the application. I built an image from the Dockerfile using the command: $ sudo docker build -t my-flask-app .
I successfully found my container with the following details: 
Successfully built f7463f72d435
Successfully tagged my-flask-app:latest

To check if your container is running or not, use the following command: 
$ sudo docker run -p 5000:5000 f7463f72d435

Next, I pushed this container to Docker Hub using the following commands:
$ sudo docker tag my-flask-app:latest paragpatil01/my-flask-app:latest   
$ sudo docker login           
$ sudo docker push paragpatil01/my-flask-app:latest 

After pushing the container, I created a bash script named run_my_flask_app.sh to automate the execution of the necessary commands. This script allows you to start your app on your machine by simply running the script. Here is the corrected script:
#!/bin/bash

# Stop and remove the previous container if it exists
sudo docker stop my-flask-app-container
sudo docker rm my-flask-app-container

# Pull the latest version of the image from Docker Hub
sudo docker pull paragpatil01/my-flask-app:latest

# Run the container
sudo docker run -p 8080:80 --name my-flask-app-container paragpatil01/my-flask-app:latest


To start your app on your machine, simply run the following command:
./run_my_flask_app.sh

Now, your app should be running on your machine.

