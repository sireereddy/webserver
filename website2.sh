#!/bin/bash
sudo apt update
sudo apt install wget  unzip figlet nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
mkdir -p webfiles
cd webfiles
sudo wget https://www.tooplate.com/zip-templates/2125_artxibition.zip
sudo unzip -o 2125_artxibition.zip
sudo rm -rf /var/www/html/*
sudo cp -r 2125_artxibition/* /var/www/html/
cd ..
sudo rm -rf webfiles
sudo systemctl restart nginx
figlet done
