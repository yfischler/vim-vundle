#!/bin/bash
set -eu

CURRENT_DIR=$PWD

cd $HOME
ln -s .vim/vimrc .vimrc
cd .vim
git submodule init
git submodule update
cd ..
echo "[INFO] starting vim to run PluginInstall, ignore missing colorscheme"
vim +PluginInstall

cd $CURRENT_DIR

