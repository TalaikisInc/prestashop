#!/bin/bash

APP=$2

if [ "$1" = "install" ]
then
  sudo apt-get update && sudo apt-get upgrade
  sudo apt-get install apache2 libapache2-mod-php -y
  sudo a2enmod rewrite
  sudo systemctl restart apache2
  sudo apt install php libapache2-mod-php -y
  sudo apt-get install php-cli php-common php-mbstring php-gd php-intl php-xml php-mysql php-zip php-curl php-xmlrpc -y
  sudo apt-get install mariadb-server -y
  sudo mysql_secure_installation
fi

if [ "$1" = "create" ]
then
  mkdir -p /var/www/html/$APP
  cd /var/www/html/$APP
  sudo wget https://download.prestashop.com/download/releases/prestashop_1.7.2.1.zip
  sudo apt-get install unzip -y
  sudo unzip prestashop_1.7.2.1.zip
  sudo rm /var/www/html/index.html
  sudo chown www-data: /var/www/html/$APP/
  sudo chmod -R 755 /var/www/html/$APP/
fi
