FROM ghcr.io/ondrejbudai/fedora-bootc:39

COPY sshd/10-custom.conf /etc/ssh/sshd_config.d/
RUN dnf install -y vim && dnf clean all
