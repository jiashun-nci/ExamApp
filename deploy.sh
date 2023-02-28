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
# check variables
echo $PRIVATE_KEY > privatekey.pem
echo $SERVER > server.crt
# stop & delete all applications
pm2 stop all
pm2 delete all
# start application
pm2 start ./bin/www --name ExamApp