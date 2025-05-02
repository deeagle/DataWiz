FROM openjdk:11

WORKDIR /app

COPY resources/spss-1.0.0.RELEASE.jar spss.jar

ENTRYPOINT ["java", "-jar", "/app/spss.jar"]
