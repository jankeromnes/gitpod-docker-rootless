FROM gitpod/workspace-full

# Install "rootless" Docker pre-requisites
# Source: https://docs.docker.com/engine/security/rootless/
RUN sudo apt-get update && \
    sudo apt-get install -y uidmap iptables && \
    sudo rm -rf /var/lib/apt/lists/*