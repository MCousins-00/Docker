#!/bin/bash
if command -v apt-get >/dev/null; then
  echo "apt-get is used here"
elif command -v yum >/dev/null; then
  echo "yum is used here"
else
  echo "I have no Idea what im doing here"
fi
#################################################################
# THIS SCRIPT WILL INSTALL REQUIRED PACKAGES AND CONFIGURATIONS #
#################################################################
### Function to install Docker & Docker Compose
sudo apt-get update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
sudo apt install curl
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt install docker-ce
sudo systemctl status docker
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo apt install nginx
sudo apt install docker.io
