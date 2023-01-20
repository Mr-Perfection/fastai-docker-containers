#!/bin/bash
set -eou pipefail

# borrowed from https://github.com/fastai/fastsetup/blob/master/ubuntu-initial.sh
apt-get update && apt-get upgrade
apt install -y software-properties-common
apt-get -y install axel
add-apt-repository ppa:apt-fast/stable
apt-get -qy install apt-fast
apt-fast -qy install python3
apt-fast -qy install vim-nox python3-powerline rsync ubuntu-drivers-common python3-pip ack lsyncd wget bzip2 ca-certificates git build-essential \
   curl grep sed dpkg libglib2.0-dev zlib1g-dev lsb-release tmux less htop exuberant-ctags openssh-client python-is-python3 \
  python3-pip python3-dev dos2unix gh pigz ufw bash-completion ubuntu-release-upgrader-core unattended-upgrades cpanminus libmime-lite-perl \
  opensmtpd mailutils cron
apt -qy autoremove

chmod +x mamba_setup.sh
./mamba_setup.sh


