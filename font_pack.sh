#!/usr/bin/env bash

#DOWNLOAD FONT PACK
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=FILEID' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1M5tGl5-g0ih8wc-w5-_Hs6kQcJLQwCEQ" -O FONTPACK && rm -rf /tmp/cookies.txt

#EXTRACT FILE
unzip FONTPACK

cd Windows10DefaultFonts
mv Fonts .fonts
mv .fonts /home/user/

# DEL
cd 

rm FONTPACK

rmdir Windows10DefaultFonts

#clean
sudo apt-get clean
sudo apt-get autoclean
sudo apt-get autoremove

# UPDATE
sudo apt update
