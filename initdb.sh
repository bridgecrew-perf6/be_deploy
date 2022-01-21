#!/bin/bash

SQL_CONTAINER="admin-mysql_db.1.jhmt04hxq732lvnr76m7ikzlv"
#docker cp ./BE_175716.sql $SQL_CONTAINER:/tmp/BE_175716.sql
docker cp ./createdb.sh $SQL_CONTAINER:/tmp/createdb.sh
docker exec -it $SQL_CONTAINER  chmod 777 /tmp/createdb.sh
docker exec -it $SQL_CONTAINER /bin/sh /tmp/createdb.sh