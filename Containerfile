FROM ghcr.io/ondrejbudai/fedora-bootc:39

RUN dnf install -y vim && dnf clean all

COPY sshd/10-custom.conf /etc/ssh/sshd_config.d/
