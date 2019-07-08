#!/bin/bash

echo -e "******************************************************\n"
echo -e "**************** Installation Influxbd ***************\n"
echo -e "******************************************************\n"
wget -qO- https://repos.influxdata.com/influxdb.key | sudo apt-key add -
echo "deb https://repos.influxdata.com/debian stretch stable" | sudo tee /etc/apt/sources.list.d/influxdb.list
sudo apt-get update
sudo apt-get install -y influxdb

# initialize the new service (execute only once)
sudo systemctl daemon-reload
sudo systemctl enable influxdb.service

#start and retrieve status
sudo systemctl start influxdb.service
sudo systemctl status influxdb.service
