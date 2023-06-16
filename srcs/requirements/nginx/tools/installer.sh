#!/bin/bash
USER=root

apt install openssl -y
sleep 2
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
 -keyout /etc/ssl/private/CAR.key \
 -out /etc/ssl/certs/CAR.crt \
 -subj="/CN=mhanda/O=mhanda.1337.ma/C=US/L=FLORIDA"

echo "<h1>hello world</h1>" > /var/www/html/index.html

nginx -g "daemon off;"