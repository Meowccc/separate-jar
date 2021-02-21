FROM openjdk:8u212-b04-jre-slim
WORKDIR /app

VOLUME /tmp

COPY target/lib/ ./lib/
COPY target/*.jar app.jar

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom","-jar","/app/app.jar"]