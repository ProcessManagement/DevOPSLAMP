#!/usr/bin/env bash
# install httpd and start the service
sudo yum -y install httpd
sudo systemctl start httpd.service
sudo systemctl enable httpd.service

# create project folder if it doesn't exist already
sudo mkdir /var/www/html/                         

# install mariadb
sudo yum -y install mariadb mariadb-server
sudo systemctl start mariadb.service
sudo systemctl enable mariadb.service

# install php
sudo yum -y install php php-xml php-mysql

# make test php file to try and see if php is working like it should and optionaly change SELinux permissions if you can't acces the php file.
sudo echo '<?php phpinfo()?>' > /var/www/html/test.php
# SELinux keeps files from being executed (permissions) from time to time so take this out of comment when you get a 'Permissions denied' error
# sudo chcon -Rht httpd_sys_content_t /var/www/html/

# restart and enable httpd
sudo systemctl restart httpd.service

# firewall/ip forwarding
sudo firewall-cmd --zone=public --add-service=http --permanent
sudo firewall-cmd --reload

# install git (optional)
sudo yum -y install git
