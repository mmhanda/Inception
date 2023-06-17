#!/bin/bash

wget https://wordpress.org/latest.zip
apt install unzip -y

mkdir -p /var/www/html
chwon -R www-data:www-data /var/www/html/
unzip latest.zip -d /var/www/html
rm -rf latest.zip
mv /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php
tail -f /dev/null