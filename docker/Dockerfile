# Use an official OpenJDK image
FROM openjdk:17-jdk-slim

# Set working directory inside the container
WORKDIR /app

# Copy the backend JAR file to the container
COPY backend/target/secure-storage.jar app.jar

# Expose the application port
EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]

'''
---

Explanation of Dockerfile

1. Base Image

Uses openjdk:17-jdk-slim for a lightweight Java 17 runtime.



2. Work Directory

Sets /app as the working directory inside the container.



3. Copy JAR File

Copies the Spring Boot JAR file (secure-storage.jar) to the container.



4. Expose Port

Exposes port 8080 for backend access.



5. Run Application

Runs the Spring Boot application using java -jar app.jar.





---

Next Steps

1. Create docker-compose.yml → Define services for Spring Boot, MySQL, and Hyperledger Fabric.


2. Create .dockerignore → Exclude target/, node_modules/, and .git/.


3. Test the container using docker build and docker run.
'''