FROM eclipse-temurin:17-alpine
EXPOSE 8081
COPY helloworld/build/libs/helloworld-0.0.1-SNAPSHOT.jar /app/spring-boot.jar
CMD ["java", "-jar", "/app/spring-boot.jar"]