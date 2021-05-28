#!/bin/bash

sudo apt-get update 
sudo apt-get upgrade -y

sudo raspi-config nonint do_spi 0
sudo raspi-config nonint do_i2c 0
sudo raspi-config nonint do_serial 2
sudo raspi-config nonint do_camera 0

sudo apt-get install -y proftpd
sudo apt-get install -y i2c-tools

sudo apt-get install -y avrdude
cat > /etc/avrdude.conf << 'EOL'
programmer 			
  id = "Arduino_1"; 			
  desc = "Arduino 1";			
  type = "linuxgpio"; 			
  reset = 22; 			
  sck = 27; 			
  mosi = 4; 			
  miso = 17; 			
;			
programmer 			
  id = "Arduino_2"; 			
  desc = "Arduino 2";			
  type = "linuxgpio"; 			
  reset = 26; 			
  sck = 13; 			
  mosi = 5; 			
  miso = 6; 			
;			

sudo apt install -y python3-pip

sudo pip3 install rpi.gpio
sudo pip3 install Pillow
sudo apt-get install -y libopenjp2-7
sudo apt-get install -y libtiff5
sudo pip3 install spidev
sudo pip3 install numpy
sudo pip3 install st7789
sudo pip3 install pyserial
sudo pip3 install smbus2
sudo pip3 install pygame==2.0.0
sudo apt-get install -y git curl libsdl2-mixer-2.0-0 libsdl2-image-2.0-0 libsdl2-2.0-0 libsdl2-ttf-2.0-0
sudo apt-get install -y python-picamera python3-picamera

sudo apt-get install -y fonts-dejavu and fonts-dejavu-core and fonts-font-awesome

wget https://raw.githubusercontent.com/adafruit/Raspberry-Pi-Installer-Scripts/master/i2samp.sh
bash i2samp.sh -y
