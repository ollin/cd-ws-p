FROM jenkins:2.7.2
MAINTAINER Oliver Nautsch
USER root
RUN apt-get update && \
    apt-get install -y apt-transport-https ca-certificates && \
    apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D && \
    echo "deb https://apt.dockerproject.org/repo debian-jessie main" >> /etc/apt/sources.list.d/docker.list && \
    apt-get update && \
    apt-get install -y docker-engine && \
    gpasswd -a jenkins docker && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
COPY plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt
ENV JAVA_OPTS=-Djenkins.install.runSetupWizard=false
USER jenkins
