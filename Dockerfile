FROM centos:7
MAINTAINER QAware OSS <qaware-oss@qaware.de>

ENV JAVA_VERSION 8u77
ENV BUILD_VERSION b03

RUN yum -y install wget; wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/$JAVA_VERSION-$BUILD_VERSION/jdk-$JAVA_VERSION-linux-x64.rpm" -O /tmp/jdk-8-linux-x64.rpm; yum -y install /tmp/jdk-8-linux-x64.rpm

# JDK stripping
RUN rm -f /usr/java/jdk1.8.0_77/src.zip /usr/java/jdk1.8.0_77/javafx-src.zip
RUN rm -rf /usr/java/jdk1.8.0_77/lib/missioncontrol/ /usr/java/jdk1.8.0_77/lib/visualvm/ /usr/java/jdk1.8.0_77/db/

RUN alternatives --install /usr/bin/java java /usr/java/latest/bin/java 1
RUN alternatives --install /usr/bin/javac javac /usr/java/latest/bin/javac 1

ENV JAVA_HOME /usr/java/latest

RUN rm -f /tmp/jdk-8-linux-x64.rpm; yum -y remove wget; yum -y clean all
