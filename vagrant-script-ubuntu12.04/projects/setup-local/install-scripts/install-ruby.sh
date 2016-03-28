#!/usr/bin/env bash


echo "------------------------------------------------------------"
echo "UPDATE APT-GET"
echo "------------------------------------------------------------"
apt-get -y update

echo "------------------------------------------------------------"
echo "INSTALL RUBYGEMS"
echo "------------------------------------------------------------"
apt-get -y install rubygems

echo "------------------------------------------------------------"
echo "INSTALL SASS & COMPASS"
echo "------------------------------------------------------------"
#gem install foundation
sudo gem install chunky_png
sudo gem install compass
sudo gem install compass-validator
sudo gem install fssm
sudo gem install sass
sudo gem install sass-globbing