#!/usr/bin/env bash

echo "------------------------------------------------------------"
echo "UPDATE APT-GET"
echo "------------------------------------------------------------"
apt-get -y update

echo "\n------------------------------------------------------------\n"
echo "INSTALL MYSQL"
echo "\n------------------------------------------------------------\n"
# install mysql
apt-get -y install mysql-server libapache2-mod-auth-mysql php5-mysql

echo "\n------------------------------------------------------------\n"
echo "INSTALL MYSQLTUNER"
echo "\n------------------------------------------------------------\n"
apt-get install mysqltuner

echo "------------------------------------------------------------"
echo "MYSQL CONFIG"
echo "------------------------------------------------------------"
cp /vagrant/projects/setup-local/files/mysql-my.cnf /etc/mysql/conf.d/global-my.cnf
cp /vagrant/projects/setup-local/files/.my.cnf /home/vagrant/.my.cnf
chmod 644 /home/vagrant/.my.cnf
cp /vagrant/projects/setup-local/files/.my.cnf /root/.my.cnf
chmod 644 /root/.my.cnf

echo "------------------------------------------------------------"
echo "MYSQL RESTART"
echo "------------------------------------------------------------"
service mysql restart
