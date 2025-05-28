# BUILD STAGE
FROM maven:3.9.6-eclipse-temurin-17 AS build

WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# RUN STAGE
FROM eclipse-temurin:17
WORKDIR /app
EXPOSE 8087
COPY --from=build /app/target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
