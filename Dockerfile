FROM openjdk:8
MAINTAINER Rafael Schettino <rafael_tecnologia@outlook.com>

WORKDIR /usr/bin/swagger2markup

RUN apt-get update && wget https://jcenter.bintray.com/io/github/swagger2markup/swagger2markup-cli/1.0.1/swagger2markup-cli-1.0.1.jar

ENTRYPOINT ["java","-jar","/usr/bin/swagger2markup/swagger2markup-cli-1.0.1.jar"]