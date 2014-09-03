#!/bin/bash
#Script for deploying config files. Overwrites everything. Only use if you know what to do.

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FILES="$DIR/files"

set -x
install $FILES/zshrc ~/.zshrc
install $FILES/vimrc ~/.vimrc
touch ~/.vimrc.more
install $FILES/bashrc ~/.bashrc
install $FILES/screenrc ~/.screenrc
install $FILES/zprofile ~/.zprofile
