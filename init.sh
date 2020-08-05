#!/bin/bash
set -eu

CURRENT_DIR=$PWD

cd $HOME
ln -s .vim/vimrc .vimrc
cd .vim
git submodule init
git submodule update
cd ..
vim +PluginInstall

cd $CURRENT_DIR

