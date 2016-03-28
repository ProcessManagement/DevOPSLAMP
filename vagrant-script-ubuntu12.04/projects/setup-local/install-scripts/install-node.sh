#!/usr/bin/env bash


echo "------------------------------------------------------------"
echo "UPDATE APT-GET"
echo "------------------------------------------------------------"
apt-get -y update

echo "------------------------------------------------------------"
echo "INSTALL NODEJS & NPM & LESS"
echo "------------------------------------------------------------"
# let us use apt-add-repository
apt-get -y install python-software-properties
# latest node for ubuntu 12.04
apt-add-repository ppa:chris-lea/node.js
# update apt-get
apt-get -y update
# install nodejs
apt-get -y install nodejs
# install less 1.3.3
npm config set strict-ssl false
npm install -g https://registry.npmjs.org/less/-/less-1.3.3.tgz
npm config set strict-ssl true


echo "------------------------------------------------------------"
echo "INSTALL BOWER & GRUNT"
echo "------------------------------------------------------------"
#npm install -g bower
#npm install -g grunt-cli
