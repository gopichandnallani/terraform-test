#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx
sudo apt-get install unzip

git clone https://github.com/gopichandnallani/webpage-test.git /var/www/html/gopichand
