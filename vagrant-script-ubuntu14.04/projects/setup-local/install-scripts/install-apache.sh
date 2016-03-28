#!/usr/bin/env bash


echo "------------------------------------------------------------"
echo "UPDATE APT-GET"
echo "------------------------------------------------------------"
apt-get -y update


echo "------------------------------------------------------------"
echo "INSTALL APACHE2"
echo "------------------------------------------------------------"
# install apache2
apt-get -y install apache2

##################################################
# APACHE STUFF
echo "------------------------------------------------------------"
echo "APACHE VHOST & ENABLE REWRITE"
echo "------------------------------------------------------------"
# delete default index.html
rm -Rf /var/www/html
mkdir /var/www/webroot

# update default vhost (to enable .htaccess by changing `AllowOverride None` to `AllowOverride All`)
cp /vagrant/projects/setup-local/files/vhost.conf /etc/apache2/sites-available/000-default.conf

# enable rewrite (to enable .htaccess)
sudo a2enmod rewrite
#sudo a2enmod ssl

echo "------------------------------------------------------------"
echo "APACHE CONFIG"
echo "------------------------------------------------------------"
cp /vagrant/projects/setup-local/files/apache2.conf /etc/apache2/apache2.conf
cp /vagrant/projects/setup-local/files/ports.conf /etc/apache2/ports.conf


echo "------------------------------------------------------------"
echo "RESTART APACHE"
echo "------------------------------------------------------------"
# restart apache
service apache2 restart

