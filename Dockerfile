FROM maven:3.9-amazoncorretto-11-alpine AS builder
ENV HOME=/app

WORKDIR $HOME
COPY DataWiz .

RUN mvn -f pom.xml clean package
