FROM openjdk:8-jdk-alpine
VOLUME /tmp
WORKDIR /usr/local
ADD target/hello-world-1.0.0-SNAPSHOT.jar app.jar
#ADD target/*.jar app.jar
ENTRYPOINT exec java -Dserver.port=5000 -jar app.jar
