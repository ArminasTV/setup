#!/bin/bash	
  
echo -e "******************************************************\n"
echo -e "**************** Installation Openhab ****************\n"
echo -e "******************************************************\n"
wget -qO - 'https://bintray.com/user/downloadSubjectPublicKey?username=openhab' | sudo apt-key add -
echo 'deb https://openhab.jfrog.io/openhab/openhab-linuxpkg testing main' | sudo tee /etc/apt/sources.list.d/openhab.list

sudo apt-get update
 
sudo apt-get install -y openjdk-11-jdk-headless
sudo apt-get install -y apt-transport-https

sudo apt-get install -y openhab
sudo apt-get install -y openhab-addons

# initialize the new service (execute only once)
sudo systemctl daemon-reload
sudo systemctl enable openhab.service

#start and retrieve status
sudo systemctl start openhab.service
sudo systemctl status openhab.service
