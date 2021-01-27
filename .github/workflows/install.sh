#!/bin/bash -e

sudo apt-get update
sudo apt-get install -y libgraphviz-dev
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
  sudo -H pipx install mathlibtools;

sudo -H pipx install invoke
sudo -H pipx install git+https://github.com/plastex/plastex.git
sudo -H pipx install git+https://github.com/PatrickMassot/leanblueprint.git