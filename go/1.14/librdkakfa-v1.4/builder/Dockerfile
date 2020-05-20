FROM alpine:3.11 as builder

RUN apk add build-base \
    && apk add pkgconfig \
    && apk add bash \
    && apk add git \
    && git clone https://github.com/edenhill/librdkafka.git \
    && cd librdkafka \
    && git checkout v1.4.2 \
    && ./configure --prefix=/librdkafka-v1.4.2\
    && make \
    && make install
