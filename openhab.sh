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

sudo /etc/init.d/openhab2 start
sudo /etc/init.d/openhab2 status
sudo update-rc.d openhab2 defaults
