#!/usr/bin/env bash

cd config/postgresql
docker rm -f $(docker ps -a | grep "routine_db" | awk "{print \$1}")
#docker pull postgres:14
docker build -t routine_db .
docker network create routine_network #2> /dev/null
docker run --name routine_db -itd \
    -p 25432:25432 \
    -e POSTGRES_PASSWORD=postsql123 \
    --network routine_network \
    --restart unless-stopped \
    routine_db

cd ../../
docker rmi -f $(docker images | grep "<none>" | awk "{print \$3}")
docker build -t routine_server .
docker network create routine_network 2> /dev/null
docker rm -f $(docker ps -a | grep "routine_server" | awk "{print \$1}")
docker run  --name routine_server -itd \
    -p 8081:8081 \
    -v ~/routine_server_local/media:/home/service/media \
    --network routine_network \
    --net-alias routine_server \
    --restart unless-stopped \
    routine_server