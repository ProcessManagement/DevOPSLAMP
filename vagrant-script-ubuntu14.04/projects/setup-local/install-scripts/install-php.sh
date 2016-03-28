#!/usr/bin/env bash


echo "------------------------------------------------------------"
echo "UPDATE APT-GET"
echo "------------------------------------------------------------"
apt-get -y update

echo "------------------------------------------------------------"
echo "INSTALL PHP"
echo "------------------------------------------------------------"
# install php
apt-get -y install php5 libapache2-mod-php5

echo "------------------------------------------------------------"
echo "INSTALL PHP MODULES"
echo "------------------------------------------------------------"
# php modules
apt-get -y install php5-curl php5-cli php5-dev php5-gd php5-json php5-common php5-rrd php5-sasl php5-intl php5-mcrypt php5-memcache

echo "------------------------------------------------------------"
echo "ENABLE MCRYPT"
echo "------------------------------------------------------------"
enable mcrypt
php5enmod mcrypt

##################################################
# SETUP PHP CLI & APACHE CONFIG
echo "------------------------------------------------------------"
echo "PHP CONFIG"
echo "------------------------------------------------------------"
cp /vagrant/projects/setup-local/files/php.ini-cli.ini /etc/php5/cli/php.ini
cp /vagrant/projects/setup-local/files/php.ini-apache2.ini /etc/php5/apache2/php.ini

echo "------------------------------------------------------------"
echo "INSTALL OPCACHE"
echo "------------------------------------------------------------"
# php opcache
php5enmod opcache
cp /vagrant/projects/setup-local/files/opcache.ini /etc/php5/mods-available/opcache.ini
ln -s /vagrant/projects/setup-local/files/cache.php /var/www/webroot/cache.php

echo "------------------------------------------------------------"
echo "INSTALL APCU"
echo "------------------------------------------------------------"
sudo apt-get install php5-apcu

echo "------------------------------------------------------------"
echo "INSTALL MEMCACHE"
echo "------------------------------------------------------------"
apt-get -y install memcached
apt-get -y install php-pear
pecl install memcache
echo "extension=memcache.so" | sudo tee /etc/php5/mods-available/memcache.ini

echo "------------------------------------------------------------"
echo "INSTALL X-DEBUG"
echo "------------------------------------------------------------"
# xdebug
apt-get install php5-xdebug

echo "------------------------------------------------------------"
echo "ENABLE X-DEBUG + COPY INI FILE"
echo "------------------------------------------------------------"
php5enmod xdebug
cp /vagrant/projects/setup-local/files/xdebug.ini /etc/php5/mods-available/xdebug.ini
mkdir /var/project
mkdir /var/project/profiler_output
mkdir /var/project/xdebug
chown

# wkHtmlToPdf
#echo "------------------------------------------------------------"
#echo "WKHTML TO PDF"
#echo "------------------------------------------------------------"
#add-apt-repository ppa:pov/wkhtmltopdf
#apt-get update
#apt-get -y install wkhtmltopdf

echo "------------------------------------------------------------"
echo "FONTS FOR WKHTML"
echo "------------------------------------------------------------"
apt-get -y install libxrender1 gsfonts-x11 xfonts-75dpi fonts-liberation

# Package ttf-mscorefonts-installer is not available, but is referred to by another package.
# ttf-mscorefonts-installer
