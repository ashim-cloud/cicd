# Use OpenJDK 17 base image
FROM openjdk:17

# Expose the port your Spring Boot app runs on (change if needed)
EXPOSE 8081

# Copy the built jar from target folder into the container
# Replace 'devops-integration.jar' with your actual JAR name if different
ADD target/devops-integration.jar /devops-integration.jar

# Run the jar file
ENTRYPOINT ["java", "-jar", "/devops-integration.jar"]
