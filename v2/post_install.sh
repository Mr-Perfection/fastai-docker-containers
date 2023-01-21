#!/bin/bash
# run `mamba init` before running post_install
mamba install -y -c fastchan fastai
mamba install -y jupyter
pip install gradio