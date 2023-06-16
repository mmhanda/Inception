FROM debian:buster

RUN apt -y update && apt install -y nginx
COPY ./tools/installer.sh ./
RUN  chmod 777 installer.sh
COPY ./conf/default.conf /etc/nginx/
COPY ./conf/default.conf /etc/nginx/conf.d/
COPY ./conf/nginx.conf /etc/nginx/conf.d/
EXPOSE 443

CMD ["./installer.sh"]