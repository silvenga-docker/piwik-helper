FROM php:7.1-cli

LABEL maintainer="Mark Lopez <m@silvenga.com>"

ENV INIT_SECONDS 60
ENV SLEEP_SECONDS 3600

RUN \
    set -xe \
    && DEBIAN_FRONTEND=noninteractive apt-get update -q \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    "s3cmd=1.5.0~rc1-2" \
    && rm -r /var/lib/apt/lists/*
