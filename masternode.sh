#!/usr/bin/env bash

cd /root/
apt-get install -y unzip git
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
git clone https://github.com/bitnaive/linda-docker.git
