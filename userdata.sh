#!/bin/bash
echo "installing nginx and unzip"
apt-get update -y
apt-get install -y nginx
systemctl start nginx
systemctl enable nginx
apt-get install unzip


git clone git@github.com:gopichandnallani/webpage-test.git /var/www/html/home
