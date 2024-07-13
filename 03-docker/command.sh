docker info

docker version

docker pull <image>

docker rmi <image>

docker run -d nginx:alpine

docker ps

docker ps -a

docker run -d --name mynginx nginx:alpine

docker logs <container_id>

docker stop <container_id>

docker rm <container_id>

docker run -d --name mynginx -p 8080:80 nginx:alpine

docker exec <container_id> <command>

docker exec -it <container_id> /bin/bash

docker stats

docker run -d --name mysql-1 -e MYSQL_ROOT_PASSWORD=rahasia -p 3306:3306 -d mysql:8.0

docker volume create vl-mysql

docker volume ls

docker run -d --name mysql-1 -e MYSQL_ROOT_PASSWORD=rahasia -p 3306:3306 -v vl-mysql:/var/lib/mysql mysql:8.0

docker volume lm <volume-name>

docker run -d --name mysql-1 -e MYSQL_ROOT_PASSWORD=rahasia -p 3306:3306 -v ${PWD}:/var/lib/mysql mysql:8.0

docker network create <network-name>

docker network ls

docker run -rm -d --name nginx-1 --network <network-name> nginx:alpine
docker run -rm -d --name nginx-2 --network <network-name> nginx:alpine

docker network connect <container-name> <network-name>

curl http://nginx-1:80

docker network disconnect <container-name> <network-name>

docker network rm <container-name>

docker inspect <container-name>

docker run -d --name mynginx --cpus="0.5" --memory="128m"  -p 8080:80 nginx:alpine

docker stats