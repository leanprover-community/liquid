#!/bin/bash -e

sudo apt-get update
sudo apt-get install -y libgraphviz-dev
sudo apt-get install -y pdf2svg
sudo apt-get install -y texlive-extra-utils
sudo apt-get install -y texlive-xetex

python3 -m pip install --upgrade pip
pip install --user invoke
pip install --user mathlibtools
pip install --user git+https://github.com/plastex/plastex.git
pip install --user git+https://github.com/PatrickMassot/leanblueprint.git