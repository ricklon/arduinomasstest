FROM ubuntu:16.04

MAINTAINER test

RUN apt-get update && apt-get install -y \
    git \
    wget \
    curl \
    openjdk-8-jre \
    xvfb \
    xz-utils\
    execstack \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN cd /lib/x86_64-linux-gnu \
      && ln -s libc.so.6 libc.so

ENV ARDUINO_VERSION 1.6.9

RUN curl -OL http://downloads.arduino.cc/arduino-${ARDUINO_VERSION}-linux64.tar.xz
RUN tar xvf arduino-${ARDUINO_VERSION}-linux64.tar.xz
RUN mv /arduino-${ARDUINO_VERSION} /arduino


WORKDIR /arduino
#CMD ["/bin/bash"]

ENTRYPOINT ["./arduino-builder"]
