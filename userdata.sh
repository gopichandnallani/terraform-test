#!/bin/bash

apt-get update -y
apt-get install -y nginx
systemctl start nginx
systemctl enable nginx
apt-get install unzip
