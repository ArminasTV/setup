#!/bin/bash

echo -e "******************************************************\n"
echo -e "**************** Installation Grafana ****************\n"
echo -e "******************************************************\n"
wget https://dl.grafana.com/oss/release/grafana-rpi_6.2.4_armhf.deb 
sudo dpkg -i grafana-rpi_6.2.4_armhf.deb 
rm grafana*

# initialize the new service (execute only once)
sudo systemctl daemon-reload
sudo systemctl enable grafana-server.service

#start and retrieve status
sudo systemctl start grafana-server.service
sudo systemctl status grafana-server.service
