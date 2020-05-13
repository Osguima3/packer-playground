#!/bin/sh

sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-cache policy docker-ce

# Install docker
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y docker-ce

# Install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo mv /tmp/docker-compose@.service /etc/systemd/system/

# Configure services 
sudo mkdir --parents /etc/docker/compose/sonarqube
sudo mv /tmp/docker-compose.yml /etc/docker/compose/sonarqube/
sudo systemctl enable docker
sudo systemctl enable docker-compose@sonarqube
