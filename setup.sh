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
curl -sS https://raw.githubusercontent.com/adafruit/Raspberry-Pi-Installer-Scripts/master/i2samp.sh -y | bash
sudo apt install -y python3-pip

sudo pip3 install -y rpi.gpio
sudo pip3 install -y Pillow
sudo apt-get install -y libopenjp2-7
sudo apt-get install -y libtiff5
sudo pip3 install -y spidev
sudo pip3 install -y numpy
sudo pip3 install -y st7789
sudo pip3 install -y pyserial
sudo pip3 install -y smbus2
sudo pip3 install -y pygame==2.0.0
sudo apt-get install -y git curl libsdl2-mixer-2.0-0 libsdl2-image-2.0-0 libsdl2-2.0-0 libsdl2-ttf-2.0-0
sudo apt-get install -y python-picamera python3-picamera

sudo apt-get install fonts-dejavu and fonts-dejavu-core and fonts-font-awesome
