FROM debian:buster

RUN  apt update &&  apt install mariadb-server -y
COPY ./tools/installer.sh ./
RUN  chmod 777 installer.sh
EXPOSE 3306

CMD  ["./installer.sh"]