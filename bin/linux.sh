#!/bin/bash
if [ $(uname) = "Linux" ]; then
	echo ""
else
	echo "Error: Operating system is not linux" >> ./linuxsetup.log
	exit
fi #adds an error message to the setup log & exits if the operating system is not linux 

mkdir -p ~/.TRASH #creates a hidden trash folder in the home dir

if [ $(find ~/.vimrc) != "\*No Such\*" ]; then
	mv ~/.vimrc ~/.bup_vimrc
	echo "Log: .vimrc directory name changed to .bup_vimrc" >> ./linuxsetup.log
fi #if there is a vimrc file in the home dir, then change its name to .bup_vimrc and log it

echo "$(cat ~/.dotfiles/etc/vimrc)" > ~/.vimrc #overwrite ~/.vimrc with the contents of the dotfile vimrc file

echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc #adds command to the end of the bashrc file in the home dir
