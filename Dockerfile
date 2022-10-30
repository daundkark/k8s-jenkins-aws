FROM openjdk:8-jdk-alpine
ARG CURRENT_VERSION
ARG JAR_FILE=build/libs/*${CURRENT_VERSION}-SNAPSHOT.jar
RUN echo ${CURRENT_VERSION} &&\
    echo ${JAR_FILE}
COPY ${JAR_FILE} app.jar

RUN mkdir destination-dir-for-add
ADD sample.tar.gz /destination-dir-for-add

ENTRYPOINT ["java","-jar","/app.jar"]
