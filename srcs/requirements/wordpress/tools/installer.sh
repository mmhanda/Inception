#!/bin/bash

apt install -y curl
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod 777 wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
cd ${LOCAL}
chown -R www-data:www-data ${LOCAL}
wp core download --allow-root
wp config create --dbname=${DATABASE_NAME} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --locale=${LOCAL} --allow-root
mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
tail -f /dev/null