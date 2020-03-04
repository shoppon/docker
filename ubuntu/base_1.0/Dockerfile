FROM ubuntu:18.04

COPY sources.list /etc/apt/sources.list

RUN apt update
RUN apt install -f -y gcc g++ cmake gdb perl vim git net-tools clang-format
RUN apt install -f -y openssh-server

RUN mkdir /run/sshd
RUN echo "root:ubuntu"|chpasswd

COPY id_rsa.pub /root
RUN mkdir -p /root/.ssh/ && cat /root/id_rsa.pub >> /root/.ssh/authorized_keys

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
