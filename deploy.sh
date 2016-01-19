#!/bin/bash
#Script for deploying config files. Overwrites everything. Only use if you know what to do.
set -u

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FILES="$DIR/files"
INSTALL="install --mode=644"

set -x
$INSTALL $FILES/zshrc ~/.zshrc
$INSTALL $FILES/bashrc ~/.bashrc
$INSTALL $FILES/gitconfig ~/.gitconfig
$INSTALL $FILES/screenrc ~/.screenrc
$INSTALL $FILES/zprofile ~/.zprofile

# Vim
touch ~/.vimrc.more
mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/bundle
$INSTALL $FILES/vimrc ~/.vimrc
$INSTALL $FILES/vim/autoload/pathogen.vim ~/.vim/autoload/pathogen.vim

cd ~/.vim/bundle;
# Update plugins from github
if [[ -d vim-gitgutter ]]; then
	pushd vim-gitgutter;
	git pull -q;
	popd
else
	git clone git://github.com/airblade/vim-gitgutter.git
fi

if [[ -d vim-airline ]]; then
	pushd vim-airline
	git pull -q
	popd
else
	git clone https://github.com/vim-airline/vim-airline.git
fi

if [[ -d vim-fugitive ]]; then
	pushd vim-fugitive
	git pull -q
	popd
else
	git clone https://github.com/tpope/vim-fugitive.git
fi
