FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/discovery-server-0.0.1-SNAPSHOT.jar app.jar
#RUN sh -c 'touch /app.jar'
#ENV JAVA_OPTS=""
EXPOSE 9090
CMD java -jar app.jar
#ENTRYPOINT ["sh", "-c" , "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar"]
