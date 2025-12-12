ARG BASE_IMAGE=ubuntu
ARG VERSION=22.04

FROM ${BASE_IMAGE}:${VERSION}

# Install dependencies
RUN apt update && \
    apt install -y iputils-ping unzip openjdk-21-jdk wget

# Expose HTTPS port
EXPOSE 8443

# Configure JAVA_HOME and PATH
RUN echo 'export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64' >> /etc/bash.bashrc && \
    echo 'export PATH=$JAVA_HOME/bin:$PATH' >> /etc/bash.bashrc
