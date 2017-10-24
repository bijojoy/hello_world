FROM openjdk:8-jdk-alpine
VOLUME /tmp
WORKDIR /home
ADD target/*.jar app.jar
ENTRYPOINT exec nohup java -Dserver.port=5000 -jar app.jar &