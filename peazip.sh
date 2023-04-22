#!/usr/bin/env bash

#PEAZIP INSTALL

wget https://github.com/peazip/PeaZip/releases/download/9.1.0/peazip_9.1.0.LINUX.GTK2-1_amd64.deb

sudo apt install ./peazip_9.1.0.LINUX.GTK2-1_amd64.deb

# DEL DEB
sudo su

rm peazip_9.1.0.LINUX.GTK2-1_amd64.deb
