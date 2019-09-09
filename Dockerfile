FROM jenkins/slave:3.29-2
MAINTAINER Oleg Nenashev <o.v.nenashev@gmail.com>
LABEL Description="This is a base image, which allows connecting Jenkins agents via JNLP protocols" Vendor="Jenkins project" Version="3.29"

USER root

# install docker
RUN curl -fsSL https://get.docker.com | bash

COPY jenkins-slave /usr/local/bin/jenkins-slave

RUN usermod -a -G docker jenkins

USER jenkins

ENTRYPOINT ["jenkins-slave"]




