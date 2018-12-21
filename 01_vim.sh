#!/bin/bash

GREEN='\e[92m'
END='\e[0m'
#Vim tools 
if [ ! -d ~/.vim/autoload ]; then
    echo -e "${GREEN} ################## Installing pathogen ###################### ${END}"
    mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
fi


if [ ! -d ~/.vim/bundle/nerdtree ]; then
    echo -e "${GREEN} ################## Installing NERDTREE ###################### ${END}"
    git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
fi

if [ ! -d ~/.vim/bundle/syntax ]; then
    echo -e "${GREEN} ################## Installing C++ Syntax Highlighting ###################### ${END}"
    git clone https://github.com/octol/vim-cpp-enhanced-highlight.git /tmp/vim-cpp-enhanced-highlight
    mkdir -p ~/.vim/syntax/
    mv /tmp/vim-cpp-enhanced-highlight/after/syntax/cpp.vim ~/.vim/syntax/cpp.vim
    rm -rf /tmp/vim-cpp-enhanced-highlight
fi

if [ ! -d ~/.vim/bundle/vim-colorschemes ]; then
    echo -e "${GREEN} ################## Installing Colors ###################### ${END}"
    git clone https://github.com/flazz/vim-colorschemes.git ~/.vim/bundle/colorschemes
fi

if [ ! -d ~/.vim/bundle/vim-airline ]; then
    echo -e "${GREEN} ################## Installing Airline ###################### ${END}"
    git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
fi

echo -e "${GREEN} ################## Configuring vimrc file ###################### ${END}"
cp files/vimrc ~/.vimrc

echo -e "${GREEN} ################## Finish ###################### ${END}"
