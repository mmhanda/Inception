#!/bin/bash

apt install -y curl
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod 777 wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
cd $LOCAL
chown -R www-data:www-data $LOCAL
wp core download --allow-root --locale=en_US
wp config create --dbname=$DATABASE_NAME --dbuser=$MYSQL_USER --dbhost=$DATABASE_NAME --dbpass=$MYSQL_PASSWORD --allow-root
wp core install --url=$DOMAIN --title=$TITLE --admin_user=$MYSQL_USER --admin_password=$MYSQL_PASSWORD --admin_email=$ADMIN_EMAIL --allow-root
wp user create $ADMIN_USER $ADMIN_EMAIL_TWO --role=administrator --user_pass=$MYSQL_PASSWORD --allow-root
wp theme install twentysixteen --activate --allow-root
mkdir -p /run/php && chown root:root /run/php && chmod 777 /run/php
sed -i 's#/run/php/php7.3-fpm.sock#9000#g' /etc/php/7.3/fpm/pool.d/www.conf
php-fpm7.3 --nodaemonize