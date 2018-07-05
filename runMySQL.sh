#!/usr/bin/env bash

docker run --name mysql \
  -e MYSQL_USER=root \
  -e MYSQL_DATABASE=casadocodigo \
  -e MYSQL_ALLOW_EMPTY_PASSWORD=yes \
  -p 3306:3306 \
  -d mysql/mysql-server:5.7