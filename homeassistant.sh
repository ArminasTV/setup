#!/bin/bash

echo -e "******************************************************\n"
echo -e "**************** Installation Home Assistant *********\n"
echo -e "******************************************************\n"

sudo apt-get update --allow-releaseinfo-change
sudo curl -fsSL https://raw.githubusercontent.com/ArminasTV/setup/master/get-docker.sh | sh
sudo usermod -aG docker pi

sudo apt-get install -y apparmor-utils apt-transport-https avahi-daemon ca-certificates curl dbus jq network-manager socat

sudo curl -sL https://raw.githubusercontent.com/home-assistant/supervised-installer/master/installer.sh | sudo bash -s -- -m raspberrypi4
