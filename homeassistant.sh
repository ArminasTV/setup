#!/bin/bash

echo -e "******************************************************\n"
echo -e "**************** Installation Home Assistant *********\n"
echo -e "******************************************************\n"

sudo apt-get install -y software-properties-common
sudo add-apt-repository universe
sudo apt-get update
sudo curl -fsSL https://raw.githubusercontent.com/ArminasTV/setup/master/get-docker.sh | sh
sudo usermod -aG docker pi

sudo apt-get install -y apparmor-utils apt-transport-https avahi-daemon ca-certificates curl dbus jq network-manager socat

sudo curl -sL https://raw.githubusercontent.com/home-assistant/hassio-installer/master/hassio_install.sh | sudo bash -s -- -m raspberrypi3
