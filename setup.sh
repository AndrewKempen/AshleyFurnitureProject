#!/bin/bash

#Set locale
sudo echo "en_US.UTF-8 UTF-8" > /etc/locale.gen

#Install required packages
sudo apt-get purge wolfram-engine -y
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install git build-essential cmake vim

#Download and compile Ashley Furniture Project Service
cd /home/pi
git clone https://github.com/Wishbonea/AshleyFurnitureProject/
cd AshleyFurnitureProject
sudo chmod +x update.sh
sudo cp AshleyFurnitureProject.service /lib/systemd/system/AshleyFurnitureProject.service
sudo systemctl daemon-reload
sudo systemctl enable AshleyFurnitureProject.service
