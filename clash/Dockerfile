FROM ubuntu:20.04

RUN apt update && apt install -y curl

COPY clash-linux-amd64-v1.12.0 /usr/bin/clash
COPY Country.mmdb /etc/clash/Country.mmdb
