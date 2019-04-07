FROM java:8-jdk-alpine

RUN mkdir /usr/app

COPY ./target/pixogram-eureka-server-0.0.1-SNAPSHOT.jar /usr/app

WORKDIR /usr/app

RUN sh -c 'touch pixogram-eureka-server-0.0.1-SNAPSHOT.jar'
EXPOSE 8761
ENTRYPOINT ["java","-jar","pixogram-eureka-server-0.0.1-SNAPSHOT.jar"]

