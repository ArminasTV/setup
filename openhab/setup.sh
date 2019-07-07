#!/bin/bash

influx -execute "CREATE DATABASE openhab"
influx -execute "CREATE USER openhab WITH PASSWORD 'openhab' WITH ALL PRIVILEGES"

sudo wget https://raw.githubusercontent.com/ArminasTV/setup/master/openhab/services/influxdb.cfg -O /etc/openhab2/services/influxdb.cfg
sudo wget https://raw.githubusercontent.com/ArminasTV/setup/master/openhab/persistence/influxdb.persist -O /etc/openhab2/persistence/influxdb.persist

sudo /etc/init.d/openhab2 restart
