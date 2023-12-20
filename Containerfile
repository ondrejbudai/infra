FROM ghcr.io/ondrejbudai/fedora-bootc:39

RUN dnf install -y vim && dnf clean all

# SSHD
COPY sshd/10-custom.conf /etc/ssh/sshd_config.d/

# podman-quadlet setup
RUN mkdir -p /usr/share/containers/systemd
COPY generic-quadlet/main.network /usr/share/containers/systemd/

# HTTP proxy
RUN mkdir -p /usr/custom/share/http-proxy
COPY http-proxy/Caddyfile /usr/custom/share/http-proxy/
COPY http-proxy/http-proxy.container /usr/share/containers/systemd/

