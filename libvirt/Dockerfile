FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN sed -i "s/archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list /etc/apt/sources.list && \
    rm -Rf /var/lib/apt/lists/* && \
    apt-get update

RUN apt install -y \
    'ceph-common' \
    'ebtables' \
    'libvirt-clients' \
    'libvirt-daemon-system' \
    'openvswitch-switch' \
    'pm-utils' \
    'python3-cephfs' \
    'python3-rados' \
    'python3-rbd' \
    'qemu-block-extra' \
    'qemu-system' \
    'trousers' \
    'qemu-kvm' \
    'ovmf'
