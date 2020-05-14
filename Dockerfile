FROM ubuntu:18.04

LABEL maintainer="beginor <beginor@qq.com>"

COPY src/install.sh /tmp/

RUN /tmp/install.sh

VOLUME [ "/opt/datax/script" ]
