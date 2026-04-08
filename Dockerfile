# Stage 1: Build the application
FROM gradle:8.2.1-jdk17-alpine AS build
WORKDIR /app

# Copy the build.gradle and settings.gradle files
COPY build.gradle settings.gradle ./

# Copy the src directory (your source code)
COPY . /app/

# Build the JAR using Gradle
RUN gradle clean build

# Stage 2: Create the final image
FROM openjdk:17-alpine
WORKDIR /app

# Copy the JAR directly from the build stage
COPY --from=build /app/build/libs/*.jar codeShareBox.jar

# Expose the port and specify the entry point
EXPOSE 8080
ENTRYPOINT ["java","-jar","codeShareBox.jar"]