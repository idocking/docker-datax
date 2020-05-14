FROM ubuntu:18.04

LABEL maintainer="beginor <beginor@qq.com>"

COPY src/install.sh /tmp/
COPY src/docker-jvm-opts.sh /

RUN /tmp/install.sh

VOLUME [ "/opt/datax/script" ]
