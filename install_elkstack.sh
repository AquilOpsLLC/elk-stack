#!/bin/bash

# Install Java
sudo apt update
sudo apt install -y default-jre

# Install Elasticsearch
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo sh -c 'echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" > /etc/apt/sources.list.d/elastic-7.x.list'
sudo apt update
sudo apt install -y elasticsearch

# Enable and start Elasticsearch service
sudo systemctl enable elasticsearch
sudo systemctl start elasticsearch

# Install Logstash
sudo apt install -y logstash

# Install Kibana
sudo apt install -y kibana

# Enable and start Kibana service
sudo systemctl enable kibana
sudo systemctl start kibana

echo "ELK stack installation completed."
