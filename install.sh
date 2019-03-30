#!/bin/bash
sudo add-apt-repository universe -y

sudo apt-get update -y

sudo sed -i -e "\$adeb http://us.archive.ubuntu.com/ubuntu/ xenial main universe\ndeb-src http://us.archive.ubuntu.com/ubuntu/ xenial main universe" /etc/apt/sources.list

sudo apt-get update -y

sudo apt-get install libsdl-image1.2 libsdl-image1.2-dev guile-2.0 \
guile-2.0-dev libsdl1.2debian libart-2.0-dev libaudiofile-dev \
libesd0-dev libdirectfb-dev libdirectfb-extra libfreetype6-dev \
libxext-dev x11proto-xext-dev libfreetype6 libaa1 libaa1-dev \
libslang2-dev libasound2 libasound2-dev -y

git clone https://github.com/RJoshi9211/Graphics-Installation.git

cd Graphics-Installation

./configure --disable-guile

make

sudo make install

sudo cp /usr/local/lib/libgraph.* /usr/lib
