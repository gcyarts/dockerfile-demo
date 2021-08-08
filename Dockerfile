FROM java:8
EXPOSE 8080
VOLUME /slm
ADD boot-docker-0.0.1-SNAPSHOT.jar boot-docker.jar
RUN bash -c 'touch / boot-docker.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/boot-docker.jar"]
