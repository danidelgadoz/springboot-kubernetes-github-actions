FROM openjdk:11-jre-slim

WORKDIR /app

COPY target/conference-demo-*.jar conference-demo.jar

EXPOSE 8080

ARG ENVIRONMENT="prd"

ENV DB_URL=jdbc:postgresql://localhost:5432/conference_app
ENV DB_USERNAME=postgres
ENV DB_PASSWORD=Welcome

CMD ["sh", "-c", "java -Dspring.profiles.active=prod -jar conference-demo.jar"]
