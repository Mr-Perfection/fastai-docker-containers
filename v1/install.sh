# ubuntu
apt-get -y upgrade
apt-get -y install apt-utils
apt update
apt-get install -y --no-install-recommends software-properties-common dirmngr gpg-agent wget bzip2 ca-certificates git rsync build-essential curl grep sed dpkg sudo perl wget jq libglib2.0-dev zlib1g-dev lsb-release tmux less htop exuberant-ctags openssh-client vim-tiny python-is-python3 python3-pip python3-dev dos2unix

# fastai (use conda to install fastai).
# PT_VER=$(curl -s https://pypi.org/pypi/torch/json | jq -r .info.version)
# TV_VER=$(curl -s https://pypi.org/pypi/torchvision/json | jq -r .info.version)
# pip install torch==$PT_VER+cpu torchvision==$TV_VER+cpu -f https://download.pytorch.org/whl/torch_stable.html
https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-aarch64.sh
# conda
# or get the latest from https://docs.conda.io/en/latest/miniconda.html
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-aarch64.sh
bash Miniconda3-py310_22.11.1-1-Linux-aarch64.sh
conda install -c fastchan fastai
conda install ipywidgets fastai neptune-client wandb pydicom captum