FROM alpine:edge@sha256:2b796ae57cb164a11ce4dcc9e62a9ad10b64b38c4cc9748e456b5c11a19dc0f3

MAINTAINER Leonardo Gatica <lgatica@protonmail.com>

RUN echo "@testing http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
  apk upgrade --update && \
  apk add mongodb@testing && \
  mkdir -p /data/db && \
  rm -rf /var/cache/apk/*

EXPOSE 27017

ENTRYPOINT ["usr/bin/mongod"]
