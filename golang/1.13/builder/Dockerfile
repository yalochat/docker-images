FROM golang:1.13-alpine3.10

LABEL MAINTAINER="Yalochat <eng@yalochat.com>"
LABEL IMAGE="yalochat/go:builder-librdkafka-v1.3.0"

RUN apk add build-base \
    && apk add pkgconfig \
    && apk add bash \
    && apk add git \
    && git clone https://github.com/edenhill/librdkafka.git \
    && cd librdkafka \
    && git checkout v1.3.0 \
    && ./configure \
    && make \
    && make install
