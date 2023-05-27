FROM registry.cn-hangzhou.aliyuncs.com/acs/maven:3-jdk-8

WORKDIR /app

COPY target/*.jar ./app.jar

ENTRYPOINT [ "java","-jar", "app.jar" ]
