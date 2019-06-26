#!/bin/bash

echo -e "******************************************************\n"
echo -e "**************** Installation Grafana ****************\n"
echo -e "******************************************************\n"
wget https://dl.grafana.com/oss/release/grafana-rpi_6.2.4_armhf.deb 
sudo dpkg -i grafana-rpi_6.2.4_armhf.deb 
rm grafana*

sudo service grafana-server start
sudo update-rc.d grafana-server defaults
sudo service grafana-server status
