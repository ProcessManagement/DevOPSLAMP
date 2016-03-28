#!/usr/bin/env bash


# add the repos in the shared folder
cd /vagrant/projects/

# Symlinks
echo "------------------------------------------------------------"
echo "WWW SYMLINKS"
echo "------------------------------------------------------------"
ln -s /vagrant/projects/test/ /var/www/webroot/

# copy .htaccess file to webroot
echo "------------------------------------------------------------"
echo "HTACCESS"
echo "------------------------------------------------------------"
cp /vagrant/projects/setup-local/files/.htaccess /var/www/webroot/.htaccess
