
FROM eclipse-temurin:21

EXPOSE 8080

#COPY ./build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/
COPY app/build/libs/app.jar /usr/app/
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "app.jar"]