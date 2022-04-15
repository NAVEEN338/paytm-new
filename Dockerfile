FROM adoptopenjdk:11-jre-hotspot
ARG JAR_FILE=target/paytm-1.0-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
