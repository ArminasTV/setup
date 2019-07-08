#!/bin/bash	
  
echo -e "******************************************************\n"
echo -e "**************** Installation Openhab ****************\n"
echo -e "******************************************************\n"
wget -qO - 'https://bintray.com/user/downloadSubjectPublicKey?username=openhab' | sudo apt-key add -
echo 'deb https://dl.bintray.com/openhab/apt-repo2 stable main' | sudo tee /etc/apt/sources.list.d/openhab2.list

sudo apt-get update
 
sudo apt-get install -y openjdk-8-jdk-headless
sudo apt-get install -y apt-transport-https

sudo apt-get install -y openhab2
sudo apt-get install -y openhab2-addons

# initialize the new service (execute only once)
sudo systemctl daemon-reload
sudo systemctl enable openhab2.service

#start and retrieve status
sudo systemctl start openhab2.service
sudo systemctl status openhab2.service
