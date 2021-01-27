#!/bin/bash -e

sudo apt-get update
sudo apt-get install -y graphviz libgraphviz-dev
sudo apt-get install -y pdf2svg
sudo apt-get install -y texlive-extra-utils
sudo apt-get install -y texlive-xetex
sudo apt-get install -y --no-install-recommends sudo less wget man-db
sudo apt-get install -y git curl python3 python3-pip python3-venv

# from leancommunity docs
set -x; \
  wget https://raw.githubusercontent.com/Kha/elan/master/elan-init.sh; \
  bash elan-init.sh -y; \
  python3 -m pip install --user pipx; \
  python3 -m pipx ensurepath; \
  mv ~/.profile ~/.bash_profile; \
  . ~/.bash_profile; \
  python3 -m pipx install mathlibtools;

python3 -m pipx install invoke
python3 -m pipx install git+https://github.com/plastex/plastex.git
python3 -m pipx install --include-deps git+https://github.com/PatrickMassot/leanblueprint.git
python3 -m pipx ensurepath