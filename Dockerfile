FROM openjdk:11

COPY . /usr/

CMD java -jar /usr/target/containers-virtualization-1.0.0-SNAPSHOT-runner.jar

EXPOSE 8080 