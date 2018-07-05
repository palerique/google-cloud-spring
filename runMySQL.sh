#!/usr/bin/env bash

docker run --name mysql \
  -e MYSQL_USER=root \
  -e MYSQL_DATABASE=casadocodigo \
  -e MYSQL_ALLOW_EMPTY_PASSWORD=yes \
  -p 3306:3306 \
  -e MYSQL_ROOT_HOST=% \
  -v $(pwd)/data:/tmp \
  --rm \
  -d mysql/mysql-server:5.7 \
  --init-connect="GRANT CREATE USER ON *.* TO 'root'@'%';FLUSH PRIVILEGES;"
