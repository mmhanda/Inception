FROM debian:buster

RUN apt -y update && apt -y install wget  && wget -y https://wordpress.org/latest.zip  \
    && apt install unzip -y && mkdir -p /usr/share/nginx && unzip latest.zip -d /usr/share/nginx/