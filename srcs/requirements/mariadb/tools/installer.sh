#!/bin/bash

service mysql start
sleep 5
mysql -e "CREATE DATABASE mariadb;"
mysql -e "CREATE USER ${MYSQL_USER}@localhost IDENTIFIED BY '${MYSQL_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON ${DATABASE_NAME}.* TO '${MYSQL_USER}'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"
mysqladmin shutdown
mysqld_safe