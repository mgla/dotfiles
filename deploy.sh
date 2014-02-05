#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FILES="files"

install $FILES/zshrc ~/.zshrc
install $FILES/vimrc ~/.vimrc
install $FILES/bashrc ~/.bashrc
install $FILES/screenrc ~/.screenrc
