#!/bin/bash
##shebang

##remove .vimrc from home directory
cd ~
rm -f .vimrc

## remove source line from .bashrc
sed -i 's#source ~/.dotfiles/etc/bashrc custom# #g' .bashrc

## remove trash directory

rm -rf .TRASH

