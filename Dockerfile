FROM openjdk:17-oracle
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
RUN mkdir -p /opt/micro_service
WORKDIR /opt/micro_service/
CMD java ${USER_JVM_ARGS} -jar /app.jar