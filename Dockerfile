FROM maven:3.9.4-amazoncorretto-17-al2023 AS build
COPY . /home/maven
WORKDIR /home/maven
RUN mvn clean compile assembly:single

FROM openjdk:17-alpine

RUN mkdir /app

COPY --from=build /home/maven/target/TelegramBot-1.0-SNAPSHOT-jar-with-dependencies.jar /app/

ENTRYPOINT ["java","-jar","/app/TelegramBot-1.0-SNAPSHOT-jar-with-dependencies.jar"]
