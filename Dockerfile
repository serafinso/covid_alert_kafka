FROM openjdk:11
ADD /build/libs/kafka-0.0.1-SNAPSHOT.jar /usr/src/kafka-0.0.1-SNAPSHOT.jar
COPY /broker/data /usr/src/kafka-logs
WORKDIR usr/src
ENTRYPOINT ["java","-jar", "kafka-0.0.1-SNAPSHOT.jar"]
