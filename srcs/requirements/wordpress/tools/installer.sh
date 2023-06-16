#!/bin/bash

wget -y https://wordpress.org/latest.zip
apt install unzip -y
apt-get install nginx mariadb-server mariadb-client php-cgi php-common php-fpm php-pear php-mbstring php-zip php-net-socket php-gd php-xml-util php-gettext php-mysql php-bcmath unzip wget git -y

# mkdir -p /usr/share/nginx
# unzip latest.zip -d /usr/share/nginx/