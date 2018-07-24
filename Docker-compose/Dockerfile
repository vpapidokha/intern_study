FROM centos:7

COPY . /installer
ENV OPENDJ_JAVA_HOME="/usr/lib/jvm/java-1.7.0-openjdk-1.7.0.181-2.6.14.8.el7_5.x86_64/jre/"
RUN chmod 777 /installer/schema.ldif
RUN yum install -y java-1.7.0-openjdk \
&& yum install -y wget \
&& yum install -y unzip
RUN /installer/openDJ_installer.sh

CMD "/installer/opendj/bin/start-ds"

