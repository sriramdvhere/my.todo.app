# Use the official Maven image to create a build artifact
FROM maven:3.8.4-openjdk-17-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

# Use OpenJDK for the runtime
FROM openjdk:17-slim
COPY --from=build /home/app/target/*.jar /usr/local/lib/todoapp.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/todoapp.jar"]