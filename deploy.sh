#!/usr/bin/env bash

# update system and install nodejs and npm
sudo apt update && sudo apt install nodejs npm
# install pm2
sudo npm install -g pm2
# stop all instance of running app
pm2 stop ExamApp
# change to working folder
cd ExamApp
# install dependencies
sudo npm install
# start application
pm2 start ./bin/www --name ExamApp