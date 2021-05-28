#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y

sudo raspi-config nonint do_spi 0
sudo raspi-config nonint do_i2c 0
sudo raspi-config nonint do_serial 2
sudo raspi-config nonint do_camera 0
