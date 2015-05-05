 
FROM java:7

MAINTAINER Larry Liang <ptolemy428@gmail.com>

ENV MAVEN_VERSION 3.2.5

RUN curl -sSL http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xzf - -C /usr/share \
     && mv /usr/share/apache-maven-$MAVEN_VERSION /usr/share/maven \
     && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

RUN apt-get update && \
    apt-get install -y phantomjs

ENV MAVEN_HOME /usr/share/maven
ENV M2_HOME /usr/share/maven

WORKDIR /root/dev


