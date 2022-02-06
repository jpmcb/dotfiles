#!/bin/bash
set -ex

timedatectl set-timezone "$TIME_ZONE"

apt update

apt install -y \
  build-essential \
  gcc \
  git \
  libacl1-dev \
  libcap-dev \
  libcap-ng-utils \
  libelf-dev \
  libseccomp-dev \
  libselinux1-dev \
  libssl-dev \
  make \
  tldr \
  util-linux \
  vim

apt-get install -y jq

# Install golang
wget https://dl.google.com/go/go1.16.6.linux-amd64.tar.gz
tar -C /usr/local/ -xzvf go1.16.6.linux-amd64.tar.gz

cat <<-EOF >> "${HOME}/.bashrc"

# Append path with go bins
export PATH=$PATH:/usr/local/go/bin
EOF
