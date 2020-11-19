#!/usr/bin/env bash

docker create -p 5432:5432 \
-e POSTGRES_PASSWORD=password \
-e POSTGRES_USER=sakila \
-e POSTGRES_DB=sakila_db \
--name sakila-db frantiseks/postgres-sakila

docker ps

docker start sakila-db

docker ps