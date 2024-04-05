# Start with a base image containing Java runtime
FROM openjdk:11
ARG JAR_FILE=target/websocket-demo-0.0.1-SNAPSHOT.jar

RUN ln -sf /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime

WORKDIR /opt/app
COPY ${JAR_FILE} websocket-demo-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java","-jar","websocket-demo-0.0.1-SNAPSHOT.jar","--spring.config.location=./config/"]

