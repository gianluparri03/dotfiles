# Dotfiles

This repo contains some of my dotfiles and I use it to sync them across devices.
At the moment, the repository contains only `.bashrc`, `.bash_aliases` and `.vimrc`.

There is also a file, called `install.sh`, that removes the previous ones and creates symlinks to the repo's ones, so that they will update with the repo.


## PS1

To set the PS1 colors, you have to set two environment variables, `PS1_FG` and `PS1_BG`, containing the escape sequence for the colors, otherwise it will be all white.
For this, and other custom options, set them in a file called `.bashrc.local`.
