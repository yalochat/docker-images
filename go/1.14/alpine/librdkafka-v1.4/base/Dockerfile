FROM alpine:3.11 as builder

LABEL MAINTAINER="Yalochat <eng@yalochat.com>"
LABEL IMAGE="yalochat/go:builder-librdkafka-v1.4"

RUN apk add build-base \
    && apk add pkgconfig \
    && apk add bash \
    && apk add git \
    && apk add openssl-dev \
    && git clone https://github.com/edenhill/librdkafka.git \
    && cd librdkafka \
    && git checkout v1.4.2 \
    && ./configure --prefix=/librdkafka-v1.4.2\
    && make \
    && make install

FROM alpine:3.11

LABEL MAINTAINER="Yalochat <eng@yalochat.com>"

COPY --from=builder /librdkafka-v1.4.2/ /

RUN apk add ca-certificates
