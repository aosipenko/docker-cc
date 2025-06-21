FROM amazoncorretto:21-alpine

RUN mkdir -p /app/jar
WORKDIR /app/jar

COPY demo-app.jar my-app.jar

EXPOSE 8080

# Prevent container from exiting when the app crashes
ENTRYPOINT sh -c 'java -jar /app/jar/my-app.jar || (echo "App crashed. Container will remain running for debug."; tail -f /dev/null)'
