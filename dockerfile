ARG BASE_IMAGE=ubuntu
ARG VERSION=22.04

FROM ${BASE_IMAGE}:${VERSION}

RUN apt update && \
    apt install -y iputils-ping && \
    apt install -y unzip && \

RUN apt install -y openjdk-21-jdk && \
    export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64 && \
    export PATH=$JAVA_HOME/bin/:$PATH &&
    echo 'export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64' >> ~/.bashrc && \
    echo 'export PATH=$JAVA_HOME/bin/:$PATH &&' >> ~/.bashrc && \
    source ~/.bashrc
