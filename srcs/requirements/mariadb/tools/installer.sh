#!/bin/bash

MYSQL_ROOT_PASSWORD=Qwertyuiop90_
MYSQL_USER=mhanda
MYSQL_PASSWORD=Qwertyuiop90_
MYSQL_DATABASE=mariadb
DATABASE_NAME=mariadb
service mysql start
sleep 5
mysql -e "CREATE DATABASE mariadb;"
mysql -e "CREATE USER ${MYSQL_USER}@localhost IDENTIFIED BY '${MYSQL_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON ${DATABASE_NAME}.* TO '${MYSQL_USER}'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"
mysqladmin shutdown
mysqld_safe