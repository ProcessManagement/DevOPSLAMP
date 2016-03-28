#!/usr/bin/env bash


echo "------------------------------------------------------------"
echo "WKHTML TO PDF"
echo "------------------------------------------------------------"
#add-apt-repository ppa:pov/wkhtmltopdf
#apt-get update
#apt-get -y install wkhtmltopdf


echo "------------------------------------------------------------"
echo "FONTS FOR WKHTML"
echo "------------------------------------------------------------"
# Check which fonts are installed
# dpkg-query -1 'font*'

apt-get -y install libxrender1 gsfonts-x11 xfonts-75dpi fonts-liberation

# Press tab to focus on ok, then space to select
#apt-get -y install ttf-mscorefonts-installer


echo "------------------------------------------------------------"
echo "INSTALL XVFB (for selenium / behat testing) - not on production"
echo "------------------------------------------------------------"
apt-get -y install xvfb x11-xkb-utils xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic x11-apps


echo "------------------------------------------------------------"
echo "firefox - not on production"
echo "------------------------------------------------------------"
apt-get -y install firefox


echo "------------------------------------------------------------"
echo "RUN SELENIUM SERVER"
echo "------------------------------------------------------------"
# Create the Selenium directory.
mkdir /usr/lib/selenium
cd /usr/lib/selenium
wget http://selenium-release.storage.googleapis.com/2.45/selenium-server-standalone-2.45.0.jar
ln -s selenium-server-standalone-2.45.0.jar selenium-server-standalone.jar
/vagrant/projects/setup-local/selenium/start.sh

echo "------------------------------------------------------------"
echo "HTOP"
echo "------------------------------------------------------------"
sudo apt-get install htop

echo "------------------------------------------------------------"
echo "FAIL2BAN"
echo "------------------------------------------------------------"


echo "------------------------------------------------------------"
echo "LOGROTATE"
echo "------------------------------------------------------------"


echo "------------------------------------------------------------"
echo "NULL MAILER"
echo "------------------------------------------------------------"


