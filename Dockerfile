# maven build
FROM maven:3.9-amazoncorretto-11-alpine AS builder
ENV HOME=/app

WORKDIR $HOME
COPY DataWiz .

RUN mvn -f pom.xml clean package

## Package
FROM tomcat:9.0-jre11-slim

COPY --from=builder /app/target/DataWiz.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
