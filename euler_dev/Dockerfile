FROM euler:2.2.17

RUN yum install -y gcc openssh-server net-tools git

RUN ssh-keygen -b 2048 -t rsa -f /etc/ssh/ssh_host_rsa_key -q -N "" && \
    ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -q -N "" && \
    ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key

RUN echo "root:euler"|chpasswd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
