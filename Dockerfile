FROM ubuntu:20.04

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
    build-essential sdcc make python3

WORKDIR /template
