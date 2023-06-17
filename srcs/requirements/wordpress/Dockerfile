FROM debian:buster

RUN apt -y update && apt install -y wget mariadb-client php-cgi \
    php-fpm php-zip php-gd php-xml-util php-mysql

COPY ./tools/installer.sh ./
RUN chmod 777 installer.sh
EXPOSE 9000

CMD [ "./installer.sh" ]