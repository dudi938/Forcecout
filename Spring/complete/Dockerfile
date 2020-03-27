FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
RUN mkdir /log
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]