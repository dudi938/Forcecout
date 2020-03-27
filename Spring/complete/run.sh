#!/bin/bash



#./mvnw package && java -jar target/gs-spring-boot-docker-0.1.0.jar
mkdir /log
 chmod +x ./mvnw && \
./mvnw package && \ 
 docker build --no-cache  -t forcecout_erver . && \
 docker run --name  springboot -d -v /Forcecout/mylog:/log -p 8080:8080 forcecout_erver