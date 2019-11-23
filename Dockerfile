FROM alpine
RUN apk update && apk add openjdk8-jre
WORKDIR /opt/
COPY target/spring-boot-rest-example-0.5.0.war spring-boot-rest-example-0.5.0.war
EXPOSE 8090
CMD java -jar -Dspring.profiles.active=test spring-boot-rest-example-0.5.0.war
