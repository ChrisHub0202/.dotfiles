#!/bin/bash

rm -r ~/.vimrc #removes the .vimrc file in the home dir

sed 's/source ∼/.dotfiles/etc/bashrc custom/ /g' ~/.bashrc > ~/.bashrc #replaces the command source ∼/.dotfiles/etc/bashrc custom with nothing in the bashrc file

rm -r .TRASH #removes the .TRASH file in the home dir 

