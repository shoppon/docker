FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN sed -i "s/archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list /etc/apt/sources.list && \
    rm -Rf /var/lib/apt/lists/* && \
    apt-get update

RUN apt install -y samba-common=2:4.11.6+dfsg-0ubuntu1 samba=2:4.11.6+dfsg-0ubuntu1 samba-libs=2:4.11.6+dfsg-0ubuntu1 samba-common-bin=2:4.11.6+dfsg-0ubuntu1 libwbclient0=2:4.11.6+dfsg-0ubuntu1 samba-vfs-modules=2:4.11.6+dfsg-0ubuntu1 python3-samba=2:4.11.6+dfsg-0ubuntu1

COPY add_user.sh /add_user.sh
RUN chmod +x /add_user.sh && /add_user.sh
