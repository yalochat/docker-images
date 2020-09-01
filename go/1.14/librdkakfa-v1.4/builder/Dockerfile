FROM golang:1.14-alpine3.11

RUN apk add build-base \
    && apk add pkgconfig \
    && apk add bash \
    && apk add git \
    && apk add openssl-dev \
    && git clone https://github.com/edenhill/librdkafka.git \
    && cd librdkafka \
    && git checkout v1.4.2 \
    && ./configure \
    && make \
    && make install
