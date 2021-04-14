#!/bin/bash


DIR=`dirname $(readlink -f "$0")`


rm ~/.bashrc ~/.bash_aliases ~/.vimrc

ln -s $DIR/bash/bashrc ~/.bashrc
ln -s $DIR/bash/bash_aliases ~/.bash_aliases
ln -s $DIR/vim/vimrc ~/.vimrc
