#!/usr/bin/env bash

echo "------------------------------------------------------------"
echo "UPDATE APT-GET"
echo "------------------------------------------------------------"
apt-get -y update

echo "------------------------------------------------------------"
echo "INSTALL MYSQL 5.6"
echo "------------------------------------------------------------"
# install mysql
apt-get -y install mysql-server-5.6 libapache2-mod-auth-mysql php5-mysql

echo "------------------------------------------------------------"
echo "INSTALL MYSQLTUNER"
echo "------------------------------------------------------------"
apt-get install mysqltuner

echo "------------------------------------------------------------"
echo "MYSQL CONFIG"
echo "------------------------------------------------------------"
cp /vagrant/projects/setup-local/files/mysql-my.cnf /etc/mysql/conf.d/global-my.cnf
cp /vagrant/projects/setup-local/files/.my.cnf /home/vagrant/.my.cnf
chmod 644 /home/vagrant/.my.cnf
cp /vagrant/projects/setup-local/files/.my.cnf /root/.my.cnf
chmod 644 /root/.my.cnf

#echo "------------------------------------------------------------"
#echo "MYSQL INSTALL DB"
#echo "------------------------------------------------------------"
#mysql_install_db --defaults-file=/vagrant/.my.cnf

echo "------------------------------------------------------------"
echo "MYSQL RESTART"
echo "------------------------------------------------------------"
service mysql restart
