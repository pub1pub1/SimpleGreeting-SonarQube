# lets use centos docker image
FROM ubuntu:12.04

RUN apt-get update -y
RUN apt-get install openjdk-7-jdk -y

# deploy the jar file to the container
COPY target/SimpleGreeting-1.0-SNAPSHOT.jar /root/SimpleGreeting-1.0-SNAPSHOT.jar