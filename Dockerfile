FROM alpine:edge@sha256:8d9872bf7dc946db1b3cd2bf70752f59085ec3c5035ca1d820d30f1d1267d65d

MAINTAINER Leonardo Gatica <lgatica@protonmail.com>

RUN echo "@testing http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
  apk upgrade --update && \
  apk add mongodb@testing && \
  mkdir -p /data/db && \
  rm -rf /var/cache/apk/*

EXPOSE 27017

ENTRYPOINT ["usr/bin/mongod"]
