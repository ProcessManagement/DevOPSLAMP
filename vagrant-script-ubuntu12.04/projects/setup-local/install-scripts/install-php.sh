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
apt-get install php5-mcrypt
echo "extension=mcrypt.so" | sudo tee /etc/php5/conf.d/mcrypt.ini

##################################################
# SETUP PHP CLI & APACHE CONFIG
echo "------------------------------------------------------------"
echo "PHP CONFIG"
echo "------------------------------------------------------------"
cp /vagrant/projects/setup-local/files/php.ini-cli.ini /etc/php5/cli/php.ini
cp /vagrant/projects/setup-local/files/php.ini-apache2.ini /etc/php5/apache2/php.ini

echo "\n------------------------------------------------------------\n"
echo "\nINSTALL APC"
echo "\n------------------------------------------------------------\n"
# php apc
apt-get install php-apc
cp /vagrant/projects/setup-local/files/apc.php /var/www/webroot/
cp /vagrant/projects/setup-local/files/apc.ini /etc/php5/conf.d/apc.ini

echo "------------------------------------------------------------"
echo "INSTALL MEMCACHE"
echo "------------------------------------------------------------"
apt-get -y install memcached
apt-get -y install php-pear
pecl install memcache
echo "extension=memcache.so" | sudo tee /etc/php5/conf.d/memcache.ini

echo "------------------------------------------------------------"
echo "INSTALL X-DEBUG"
echo "------------------------------------------------------------"
# xdebug
apt-get install php5-xdebug

echo "------------------------------------------------------------"
echo "ENABLE X-DEBUG + COPY INI FILE"
echo "------------------------------------------------------------"
php5enmod xdebug
cp /vagrant/projects/setup-local/files/xdebug.ini /etc/php5/conf.d/xdebug.ini
mkdir /var/project
mkdir /var/project/profiler_output
mkdir /var/project/xdebug

