#!/usr/bin/env bash

# shellcheck disable=SC2140,SC2086

# COLOR VARIABLES

RED="\e[31m"

ENDCOLOR="\e[0m"

# INSTALL WINE

echo -e "\n\n${RED}<-- Installing WINE -->${ENDCOLOR}"

sudo dpkg --add-architecture i386
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key

sudo apt update

sudo apt install -y wine wine64 wine32 winbind winetricks

# INSTALL WINETRICKS DEPENDENCIES 

winetricks -q -v vcrun2008 vcrun2010 vcrun2012 vcrun2019 vcrun6sp6

# ADD LOCAL JP

echo -e "\n\n${RED}<-- Add Local JP -->${ENDCOLOR}"

sudo apt-get install language-pack-ja -y

sudo apt update

# ADD SHORTCUT

echo -e "\n\n${RED}<-- Add Exploler Shortcut -->${ENDCOLOR}"

wget https://raw.githubusercontent.com/grass-cat/wine/main/Desktop/Explorer_EN.desktop

wget https://raw.githubusercontent.com/grass-cat/wine/main/Desktop/Explorer_JP.desktop

# SHORTCUT 
cd

mv Explorer_EN.desktop Explorer_JP.desktop /home/user/Desktop/

# INSTALL UNIZP
sudo apt install -y unzip

wget https://raw.githubusercontent.com/grass-cat/wine/main/Tools.zip

# EXTRACT FILE
unzip Tools.zip

# DEL
clean
cd

rm Tools.zip

echo -e "\n\n${RED}<-- INSTALL WINE FINISH -->${ENDCOLOR}"

winecfg

sudo apt update
