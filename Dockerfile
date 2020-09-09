FROM openjdk:8-jdk-alpine

# Refer to Maven build -> finalName
ARG JAR_FILE=build/libs/*.jar

# cd /opt/app
WORKDIR /tmp

# cp target/spring-boot-web.jar /opt/app/app.jar
COPY ${JAR_FILE} app.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]