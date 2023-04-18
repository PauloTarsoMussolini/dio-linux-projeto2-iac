#!/bin/bash

echo "------  Updating Server  ---------"
apt-get update
apt-get upgrade -y

echo "------ Installing Apache Web Server -------"
apt-get install apache2 -y

echo "------ Installing unzip -------------------"
apt-get install unzip -y


echo "------ Cloning Github respository ---------"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "------ Unziping files --------"
unzip main.zip

echo "------ Copying files to web server ------"
cd linux-site-dio-main
cp -R * /var/www/html/

echo "------     FINISHED ---------"
