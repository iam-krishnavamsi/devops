#!/bin/bash

# Setup Hostname
hostnamectl set-hostname "docker.cloudbinary.io"

# Configure Hostname unto hosts file 
echo "`hostname -I | awk '{ print $1}'` `hostname`" >> /etc/hosts 

# Update Ubuntu Operating System Repository
sudo apt-get update

# Download, Install & Configure Utility Softwares 
sudo apt-get install git curl unzip tree wget -y 

# Install Docker on Ubuntu Server
sudo apt-get install docker.io -y 

# Enable Docker For Ubuntu User
sudo usermod -aG docker ubuntu

# Enable Docker Services at boot level
sudo systemctl enable docker

# Restart Docker Daemon 
sudo systemctl restart docker


# To Verify Docker Daemon 
# ps -aux | grep docker 
# systemctl status docker 

# List Docker Images
# docker images 

# Verify the containers status using the following command:
# docker ps 

# Verify the containers status using the following command:
# docker ps -a

# Verify the status of a container.
# docker ps -a -f name=<container_name>

# To stop a container, use the following command:
# docker container stop <container_name or id>

# To start a container, use the following command:
# docker container start <container_name or id>

# To restart a container, use the following command:
# docker container restart <container_name or id>

# In case of error, use the following command to verify the container logs.
# docker logs <container_name>

# Remove the Container
# docker rm <container_name or id>

# Remove the Docker Image 
# docker rmi <image_name or id>
