FROM gitpod/workspace-full

# Install "rootless" Docker pre-requisites
# Source: https://docs.docker.com/engine/security/rootless/
RUN sudo apt-get update && \
    sudo apt-get install -y uidmap iptables && \
    sudo rm -rf /var/lib/apt/lists/*
ENV SKIP_IPTABLES=1
ENV XDG_RUNTIME_DIR=/tmp/docker-33333
ENV PATH=/home/gitpod/bin:$PATH
ENV DOCKER_HOST=unix:///tmp/docker-33333/docker.sock