#!/bin/bash
source ~/.bashrc
mamba install -y pytorch torchvision -c pytorch

# Activate conda env.
mamba create -y -n fastai jupyterlab -c conda-forge
echo -n "alias notebook='jupyter notebook --allow-root'" >> ~/.bashrc
echo -n "mamba activate fastai" >> ~/.bashrc
mamba activate fastai