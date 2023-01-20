#!/bin/bash
source ~/.bashrc
mamba init
source ~/.bashrc
mamba install -y pytorch torchvision -c pytorch

# Activate conda env.
mamba create -y -n fastai jupyterlab -c conda-forge
echo -n "mamba activate fastai" >> ~/.bashrc