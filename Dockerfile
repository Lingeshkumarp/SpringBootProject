# Use Maven to build the application

FROM maven:3.8.5-openjdk-17 AS build

COPY demo .

RUN mvn clean package -DskipTests



# Use OpenJDK to run the application

FROM OpenJDK:20-jdk-slim

COPY --from=build /target/demo-0.0.1-SNAPSHOT.jar demo.jar

EXPOSE 9091

ENTRYPOINT ["java", "-jar", "demo.jar"]