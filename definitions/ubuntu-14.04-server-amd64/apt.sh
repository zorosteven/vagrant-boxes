apt-get -y update
apt-get -y upgrade
apt-get -y install linux-headers-$(uname -r) build-essential cmake gcc
apt-get -y install zlib1g-dev libssl-dev libreadline-gplv2-dev libyaml-dev
apt-get -y install vim curl wget git zsh w3m unzip
apt-get -y install dkms
apt-get -y install nfs-common
