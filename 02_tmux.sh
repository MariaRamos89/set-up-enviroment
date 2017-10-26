#!/bin/bash

BLUE='\e[94m'
END='\e[0m'
#Vim tools 
if [ ! -d ~/.tmux-themepack ]; then
    echo -e "${BLUE} ################## Installing tmux colors ###################### ${END}"
    git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack
fi

echo -e "${BLUE} ################## Configuring tmux.conf file ###################### ${END}"
cp files/tmux.conf ~/.tmux.conf

echo -e "${BLUE} ################## Finish ###################### ${END}"
