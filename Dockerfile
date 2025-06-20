FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy JAR and config
COPY ayunpictojava-1.0-SNAPSHOT.jar app.jar
COPY settings.json settings.json

# Expose the port for Render to detect
EXPOSE 8080

# Start the server
CMD ["java", "-jar", "app.jar"]
