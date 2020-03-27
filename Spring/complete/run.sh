#!/bin/bash



#./mvnw package && java -jar target/gs-spring-boot-docker-0.1.0.jar
 chmod +x ./mvnw && \
./mvnw package && \ 
 docker build --no-cache  -t forcecout_erver . && \
 docker run --name  springboot -d -v log:/elk-with-filebeat-by-docker-compose/mylog -p 8080:8080 forcecout_erver