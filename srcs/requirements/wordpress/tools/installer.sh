#!/bin/bash

wget -y https://wordpress.org/latest.zip
apt install unzip -y
apt-get install nginx mariadb-server mariadb-client php-cgi php-common php-fpm php-pear php-mbstring php-zip php-net-socket php-gd php-xml-util php-gettext php-mysql php-bcmath unzip wget git -y

mkdir -p /mnt/shared_nginx_press
unzip latest.zip -d /mnt/shared_nginx_press
rm -rf latest.zip
cd /mnt/shared_nginx_press/wordpress
cp wp-config-sample.php wp-config.php
chwon -R www-data:www-data /mnt/shared_nginx_press/wordpress

echo "server {

    listen 9000;
    root /mnt/shared_nginx_press/wordpress;
    index index.php index.html index.htm;

    location / {
    try_files $uri $uri/ /index.php?$args;
    }

    location ~ \.php$ {
    try_files $uri =404;
    include /etc/nginx/fastcgi_params;
    fastcgi_read_timeout 3600s;
    fastcgi_buffer_size 128k;
    fastcgi_buffers 4 128k;
    fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
    fastcgi_pass unix:/run/php/php7.3-fpm.sock;
    fastcgi_index index.php;
    }
}
" > /mnt/shared_nginx_press/wordpress/wordpress.conf

tail -f /dev/null