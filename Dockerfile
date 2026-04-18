FROM ubuntu:22.04

RUN apt update && apt install -y \
    gawk wget git diffstat unzip texinfo gcc build-essential \
    chrpath socat cpio python3 python3-pip python3-pexpect \
    xz-utils debianutils iputils-ping python3-git python3-jinja2 \
    python3-subunit zstd liblz4-tool file locales libacl1 \
    mesa-common-dev sudo

RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8

# Yocto cannot run as root, so we create a user
RUN useradd -m -s /bin/bash yocto && \
    echo "yocto ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER yocto
WORKDIR /home/yocto/crumb