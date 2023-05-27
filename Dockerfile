FROM openjdk:11-jre

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone

WORKDIR /app

COPY target/*.jar ./app.jar

ENTRYPOINT [ "java","-jar", "app.jar" ]
