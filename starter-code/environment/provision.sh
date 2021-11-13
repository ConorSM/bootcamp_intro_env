#!/bin/bash

# Update the sources list
sudo apt-get update -y

# upgrade any packages available
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y

# install git
sudo apt-get install git -y

# install nodejs
sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y

# install pm2
sudo npm install pm2 -g

# remove vm nginx config and replace with local config
sudo rm -rf /etc/nginx/sites-available/default
sudo cp app/app/default /etc/nginx/sites-available/

#remove rm .bashrc and replace with local version
sudo rm -rf /home/vagrant/.bashrc
sudo cp /home/vagrant/app/app/.bashrc /home/vagrant/
source ~/.bashrc

# if nginx is is set up correctly these will be successful
sudo systemctl restart nginx
sudo systemctl enable nginx






