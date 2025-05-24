# Start from an OpenJDK runtime image
FROM amazoncorretto:17.0.4

# Set the working directory inside the container
WORKDIR /app

# Copy the built jar file into the container
COPY target/crud-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your Spring Boot app runs on
EXPOSE 9090

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]