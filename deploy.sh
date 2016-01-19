#!/bin/bash
#Script for deploying config files. Overwrites everything. Only use if you know what to do.
set -u

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FILES="$DIR/files"
INSTALL="install --mode=644"

set -x
$INSTALL $FILES/zshrc ~/.zshrc
$INSTALL $FILES/bashrc ~/.bashrc
$INSTALL $FILES/screenrc ~/.screenrc
$INSTALL $FILES/zprofile ~/.zprofile

# Vim
touch ~/.vimrc.more
mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/bundle
$INSTALL $FILES/vimrc ~/.vimrc
$INSTALL $FILES/vim/autoload/pathogen.vim ~/.vim/autoload/pathogen.vim

cd ~/.vim/bundle;
if [[ -d vim-gitgutter ]]; then
	cd vim-gitgutter;
	git pull -q;
else
	git clone git://github.com/airblade/vim-gitgutter.git
fi
