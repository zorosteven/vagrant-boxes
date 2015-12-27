apt-get update --fix-missing
apt-get -y upgrade
apt-get -y -f cmake g++ gcc
apt-get -y -f install linux-headers-$(uname -r) build-essential
apt-get -y -f install zlib1g-dev libssl-dev libreadline-gplv2-dev libyaml-dev python-dev
apt-get -y -f install curl wget git vim bash zsh tmux w3m
apt-get -y -f install dkms
apt-get -y -f install nfs-common
