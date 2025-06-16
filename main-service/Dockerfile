# Build stage
FROM maven:3.8.6-jdk-11-slim AS build
WORKDIR /app
# Copy the pom.xml file
COPY pom.xml .
# Copy the source code
COPY src /app/src
# Build the application
RUN mvn clean package -DskipTests

# Run stage
FROM openjdk:17-jdk-slim
WORKDIR /app
# Copy the built jar from the build stage
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
