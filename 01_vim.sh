#!/bin/bash

GREEN='\e[92m'
END='\e[0m'
#Vim tools 
#TODO: Do a check of the different part to update vimrc without requiring to download plug.vim every time
if [ ! -d ~/.vim/autoload ]; then
    echo -e "${GREEN} ################## Installing vim-plug ###################### ${END}"
    mkdir -p ~/.vim/autoload
    wget -O ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
fi

echo -e "${GREEN} ################## Configuring vimrc file ###################### ${END}"
cp files/vimrc ~/.vimrc

echo -e "${GREEN} ################## Open Manually VIM and put command :PlugInstall to install all the plugins in vimrc file ###################### ${END}"
echo -e "${GREEN} ################## Finish ###################### ${END}"
