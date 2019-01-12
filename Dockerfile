FROM java
MAINTAINER derrick

ENV PARAMS=""

ENV TZ=PRC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ADD target/frame-config-*.jar /frame-config.jar

ENTRYPOINT ["java", "-jar", "/frame-config.jar"]