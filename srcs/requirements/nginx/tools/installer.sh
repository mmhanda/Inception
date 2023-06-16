#!/bin/bash
USER=root

# mkdir -p /var/www/localhost/html
# chown -R $USER:$USER /var/www/localhost/html
# chmod -R 755 /var/www/localhost
echo "
<html>
    <head>
        <title>Welcome to localhost</title>
    </head>
    <body>
        <h1>Success! Your Nginx server is successfully configured for <em>your_domain</em>. </h1>
<p>This is a sample page.</p>
    </body>
</html>" > /var/www/html/index

# ln -s /etc/nginx/sites-available/localhost/nginx.conf /etc/nginx/sites-enabled/
nginx -g "daemon off;"
# apt install openssl -y && openssl req -x509 -nodes -days 365 -newkey
#     rsa:2048 -keyout /etc/ssl/private/CAR.key  -out /etc/ssl/certs/CAR.crt 
#     -subj="/CN=mhanda/O=mhanda.1337.ma/C=US/L=FLORIDA"