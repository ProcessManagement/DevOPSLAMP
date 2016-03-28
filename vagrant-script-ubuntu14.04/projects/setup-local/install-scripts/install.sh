#!/bin/sh

# USAGE:
# sudo su
# /vagrant/projects/setup-local/install-scripts/install.sh


echo "------------------------------------------------------------"
echo "INSTALL APACHE"
echo "------------------------------------------------------------"
/vagrant/projects/setup-local/install-scripts/install-apache.sh


echo "------------------------------------------------------------"
echo "INSTALL MYSQL"
echo "------------------------------------------------------------"
/vagrant/projects/setup-local/install-scripts/install-mysql.sh


echo "------------------------------------------------------------"
echo "INSTALL PHP"
echo "------------------------------------------------------------"
/vagrant/projects/setup-local/install-scripts/install-php.sh


echo "------------------------------------------------------------"
echo "INSTALL GIT"
echo "------------------------------------------------------------"
/vagrant/projects/setup-local/install-scripts/install-git.sh


echo "------------------------------------------------------------"
echo "INSTALL NODE"
echo "------------------------------------------------------------"
/vagrant/projects/setup-local/install-scripts/install-node.sh


echo "------------------------------------------------------------"
echo "INSTALL RUBY"
echo "------------------------------------------------------------"
/vagrant/projects/setup-local/install-scripts/install-ruby.sh


echo "------------------------------------------------------------"
echo "INSTALL JAVA"
echo "------------------------------------------------------------"
/vagrant/projects/setup-local/install-scripts/install-java.sh


echo "------------------------------------------------------------"
echo "INSTALL TOOLS (xvfb, firefox)"
echo "------------------------------------------------------------"
/vagrant/projects/setup-local/install-scripts/install-tools.sh


echo "------------------------------------------------------------"
echo "INSTALL project"
echo "------------------------------------------------------------"
/vagrant/projects/setup-local/install-scripts/install-project-test.sh


echo "------------------------------------------------------------"
echo "UPDATE UBUNTU"
echo "------------------------------------------------------------"
apt-get -y update


echo "------------------------------------------------------------"
echo "RESTART APACHE"
echo "------------------------------------------------------------"
# restart apache
service apache2 restart


echo "------------------------------------------------------------"
echo "RESTART MYSQL"
echo "------------------------------------------------------------"
# restart mysql
service mysql restart


echo "------------------------------------------------------------"
echo "BACK HOME"
echo "------------------------------------------------------------"
sudo su vagrant
cd ~
