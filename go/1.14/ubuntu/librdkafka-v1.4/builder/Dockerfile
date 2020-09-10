FROM ubuntu:14.04

RUN apt-get update -y -q \
    && apt-get upgrade -y -q  \
    && apt-get install -y pkg-config \
    && apt-get install -y build-essential \
    && apt-get install -y bash \
    && apt-get install -y git \
    && git clone https://github.com/edenhill/librdkafka.git \
    && cd librdkafka \
    && git checkout v1.4.2 \
    && ./configure \
    && make \
    && make install

RUN DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y -q curl build-essential ca-certificates git 
RUN curl -s https://dl.google.com/go/go1.14.9.linux-amd64.tar.gz| tar -v -C /usr/local -xz
ENV PATH $PATH:/usr/local/go/bin
