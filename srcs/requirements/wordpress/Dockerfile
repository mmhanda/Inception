FROM debian:buster

RUN apt -y update && apt install wget && wget https://wordpress.org/latest.zip \
    && apt install unzip && mkdir -p /usr/share/nginx && unzip latest.zip -d /usr/share/nginx/