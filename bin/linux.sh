#!/bin/bash
##creates log
touch linuxsetup.log


## checks if system is operating in Linux
if [ "$(uname)" = "Linux"  ];
then
	echo "System is operating in Linux" >> linuxsetup.log	
else
	echo "Error: System not operating in Linux" >> linuxsetup.log
	exit
fi

## checks if .vimrc exists, and changes its name to bup_vimrc, adds content from it to .vimrc

FILE=~/.vimrc
if [ -f "$FILE" ]; then
	cd ~
	mkdir .TRASH
	mv .vimrc .bup_vimrc
	cd .dotfiles/bin
	echo "current $FILE file was changed to .bup_vimrc" >> linuxsetup.log
	cd ~
	cp .dotfiles/etc/vimrc ~/.vimrc
else
	cd ~
	mkdir .TRASH 
	cp .dotfiles/etc/vimrc ~/.vimrc
fi

## adding statement to the end of .bash rc
cd ~
echo "source ~/.dotfiles/etc/bashrc custom" >> .bashrc
echo "source ~/.dotfiles/etc/bashrc custom" >> linuxsetup.log
