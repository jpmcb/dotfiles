#!/bin/bash
set -ex

# install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# fill out the bash config
cat <<-EOF >> "${HOME}/.gitconfig"
[url "git@github.com:"]
    insteadOf = https://github.com/
EOF

# fill out the bash config
cat <<-EOF >> "${HOME}/.bashrc"

# set default editor
export EDITOR=$(which vim)

export PATH=$PATH:/usr/local/go/bin
EOF
