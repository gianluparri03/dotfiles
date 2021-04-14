#!/bin/bash

DIR=`dirname $(readlink -f "$0")`

# Removes the old files
rm ~/.bashrc ~/.bash_aliases ~/.vimrc

# Create symlinks for the new ones
ln -s $DIR/bashrc ~/.bashrc
ln -s $DIR/bash_aliases ~/.bash_aliases
ln -s $DIR/vimrc ~/.vimrc

# Applies changes
source ~/.bashrc
