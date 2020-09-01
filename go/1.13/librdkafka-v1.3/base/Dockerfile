FROM alpine:3.10 as builder

RUN apk add build-base \
    && apk add pkgconfig \
    && apk add bash \
    && apk add git \
    && apk add openssl-dev \
    && git clone https://github.com/edenhill/librdkafka.git \
    && cd librdkafka \
    && git checkout v1.3.0 \
    && ./configure --prefix=/librdkafka-v1.3.0\
    && make \
    && make install


FROM alpine:3.10

LABEL MAINTAINER="Yalochat <eng@yalochat.com>"

COPY --from=builder /librdkafka-v1.3.0/ /

RUN apk add ca-certificates
