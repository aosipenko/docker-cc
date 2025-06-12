FROM amazoncorretto:21-alpine

RUN mkdir -p /app/jar
WORKDIR /app/jar

COPY demo-app.jar my-app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/jar/my-app.jar"]