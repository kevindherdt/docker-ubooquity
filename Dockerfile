# Use Eclipse Temurin 17 base image
FROM eclipse-temurin:17

# Set the working directory
WORKDIR /app

# Copy the Ubooquity JAR file into the container
COPY ubooquity.jar /app/ubooquity.jar

# Create a directory for Ubooquity data
RUN mkdir /app/data

# Expose the default ports for Ubooquity
EXPOSE 2202 2203

# Define a volume for Ubooquity data
VOLUME /app/data

# Run Ubooquity with the specified options
CMD ["java", "-jar", "ubooquity.jar", "--remoteadmin", "--headless", "--workdir", "/app/data"]
