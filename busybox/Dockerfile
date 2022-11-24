FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN sed -i "s/archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list /etc/apt/sources.list && \
    rm -Rf /var/lib/apt/lists/* && \
    apt-get update

RUN apt install -y ceph-common python3 python3-pip dnsutils vim curl

RUN pip install python-openstackclient \
    --index-url=http://pypi.easystack.cn/pypi/simple/ \
    --extra-index-url=https://pypi.tuna.tsinghua.edu.cn/simple/
