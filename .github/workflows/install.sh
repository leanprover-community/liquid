#!/bin/bash -e

sudo apt-get update
sudo apt-get install -y libgraphviz-dev
sudo apt-get install -y pdf2svg
sudo apt-get install -y texlive-extra-utils
sudo apt-get install -y texlive-xetex

python3 -m pip install --upgrade pip
sudo pip install invoke
sudo pip install mathlibtools
sudo pip install git+https://github.com/plastex/plastex.git
sudo pip install git+https://github.com/PatrickMassot/leanblueprint.git