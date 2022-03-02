#
# Copyright (C) 2016 Red Hat <contact@redhat.com>
#
# Author: Loic Dachary <loic@dachary.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU Library Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Library Public License for more details.
#
# Environment variables are substituted via envsubst(1)
#
# user_id=$(id -u)
# os_version= the desired REPOSITORY TAG
#
FROM ubuntu:20.04

#ENV http_proxy http://172.19.52.66:7890

COPY install-deps.sh /root/
RUN mkdir /root/debian
COPY debian /root/debian/
RUN apt-get update
# build dependencies
RUN cd /root ; DEBIAN_FRONTEND=noninteractive ./install-deps.sh
# development tools
RUN apt-get install -y ccache valgrind gdb gdisk kpartx jq xmlstarlet sudo

RUN apt install -f -y openssh-server

RUN mkdir /run/sshd
RUN echo "root:ubuntu"|chpasswd

COPY id_rsa.pub /root
RUN mkdir -p /root/.ssh/ && cat /root/id_rsa.pub >> /root/.ssh/authorized_keys

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
