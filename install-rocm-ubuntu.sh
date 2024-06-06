#!/bin/bash

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install linux-modules-extra-aws
wget https://repo.radeon.com/amdgpu-install/6.1.2/ubuntu/jammy/amdgpu-install_6.1.60102-1_all.deb
sudo apt-get -y install ./amdgpu-install_6.1.60102-1_all.deb
sudo amdgpu-install --usecase=rocmdev
sudo usermod -a -G video,render ubuntu

# Requires reboot
# sudo reboot
