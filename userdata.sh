#! /bin/bash

sudo apt-get update -y
sudo apt-get install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx
sudo apt-get install unzip
echo "The page was created by the user data" | sudo tee /var/www/html/index.html