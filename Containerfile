FROM ghcr.io/ondrejbudai/fedora-bootc:39

COPY sshd/99-disable-root-login.conf /etc/ssh/sshd_config.d/
