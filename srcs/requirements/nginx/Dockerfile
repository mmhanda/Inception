FROM debian:buster

RUN apt -y update && apt install -y nginx
COPY ./tools/installer.sh ./
COPY ./conf/nginx.conf /etc/nginx/
RUN  chmod 777 installer.sh
EXPOSE 443

CMD ["./installer.sh"]