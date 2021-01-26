#!/bin/bash -e

sudo apt update
sudo apt install -y libgraphviz-dev
sudo apt install -y pdf2svg
sudo apt install -y texlive-extra-utils
sudo apt install -y texlive-xetex

python3 -m pip install --upgrade pip
pip install --user invoke
pip install --user mathlibtools
pip install --user git+https://github.com/plastex/plastex.git
pip install --user git+https://github.com/PatrickMassot/leanblueprint.git