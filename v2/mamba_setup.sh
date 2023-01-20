#!/bin/bash
# https://gist.github.com/mohanpedala/1e2ff5661761d3abd0385e8223e16425#set--e--u--x--o-pipefail
set -eoux pipefail

# Mamba
case "$OSTYPE" in
  darwin*)
    case $(uname -m) in
      arm64)  DOWNLOAD=https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-MacOSX-arm64.sh; ;;
      *)      DOWNLOAD=https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-MacOSX-x86_64.sh; ;;
    esac ;;
  linux*)
    case $(uname -m) in
      aarch64) DOWNLOAD=https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-Linux-aarch64.sh; ;;
      *)       DOWNLOAD=https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-Linux-x86_64.sh; ;;
      esac ;;
  *)          echo "unknown: $OSTYPE" ;;
esac

case "$SHELL" in
  *bin/zsh*)   SHELL_NAME=zsh; ;;
  *bin/bash*)  SHELL_NAME=bash ;;
  *bin/fish*) SHELL_NAME=fish ;;
  *)        echo "unknown: $SHELL" ;;
esac

curl -LO --no-progress-meter $DOWNLOAD
bash Mambaforge-*.sh -b

~/mambaforge/bin/conda init $SHELL_NAME

# init mamba
mamba init


