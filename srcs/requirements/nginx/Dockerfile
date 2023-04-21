FROM debian:buster
RUN apt -y update && apt install -y nginx && apt install openssl -y && openssl req -x509 -nodes -days 365 -newkey \
    rsa:2048 -keyout /etc/ssl/private/CAR.key  -out /etc/ssl/certs/CAR.crt \
    -subj="/CN=mhanda/O=mhanda.1337.ma/C=US/L=FLORIDA"

COPY ./conf/nginx.conf /etc/nginx/sites-available/nginx.conf

CMD [ "nginx", "-g", "daemon off;"]
