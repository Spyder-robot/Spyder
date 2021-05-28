#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y

sudo raspi-config nonint do_spi 0
sudo raspi-config nonint do_i2c 0
sudo raspi-config nonint do_serial 2
sudo raspi-config nonint do_camera 0

sudo apt-get install -y proftpd
sudo apt-get install -y avrdude
sudo apt-get install -y i2c-tools
curl -sS https://raw.githubusercontent.com/adafruit/Raspberry-Pi-Installer-Scripts/master/i2samp.sh | bash

sudo apt-get install fonts-dejavu and fonts-dejavu-core and fonts-font-awesome
