FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN sed -i "s/archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list /etc/apt/sources.list && \
    rm -Rf /var/lib/apt/lists/* && \
    apt-get update

RUN apt install -y samba-vfs-modules samba

COPY add_user.sh /add_user.sh
RUN chmod +x /add_user.sh && /add_user.sh
