FROM java
COPY target/spring-boot-web-0.0.1-SNAPSHOT.jar /app/demo/
EXPOSE 8080
CMD java -jar /app/demo/spring-boot-web-0.0.1-SNAPSHOT.jar
