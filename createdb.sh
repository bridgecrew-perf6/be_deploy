#!/bin/bash

PORT="17571"
DB_NAME="BE_175716"
DB_USER="be175716"
DB_PASSWORD="qwe123"

mysql -pstudent -e "CREATE DATABASE IF NOT EXISTS ${DB_NAME};"
mysql -pstudent -e "CREATE USER IF NOT EXISTS ${DB_USER}@'%' IDENTIFIED BY '${DB_PASSWORD}';"
mysql -pstudent -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';"
mysql -pstudent -e "FLUSH PRIVILEGES;"
#mysql -u ${DB_USER} -p${DB_PASSWORD} BE_158817 -e "USE ${DB_NAME};"
#mysql -u ${DB_USER} -p${DB_PASSWORD} ${DB_NAME} < /tmp/${DB_NAME}.sql
#mysql -u ${DB_USER} -p${DB_PASSWORD} ${DB_NAME} -e "UPDATE ps_shop_url SET domain='localhost:${PORT}', domain_ssl='localhost:${PORT}' WHERE id_shop_url=1;"