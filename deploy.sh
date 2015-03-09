#!/bin/bash
#Script for deploying config files. Overwrites everything. Only use if you know what to do.
set -u

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FILES="$DIR/files"
INSTALL="install --mode=644"

set -x
$INSTALL $FILES/zshrc ~/.zshrc
$INSTALL $FILES/vimrc ~/.vimrc
touch ~/.vimrc.more
$INSTALL $FILES/bashrc ~/.bashrc
$INSTALL $FILES/screenrc ~/.screenrc
$INSTALL $FILES/zprofile ~/.zprofile
