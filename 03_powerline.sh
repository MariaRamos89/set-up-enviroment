#!/bin/bash

YELLOW='\e[93m'
END='\e[0m'
#Vim tools 
if [ ! -d ~/powerline-shell ]; then
    echo -e "${YELLOW} ################## Installing Powerline ###################### ${END}"
    git clone https://github.com/banga/powerline-shell ~/powerline-shell
    cd ~/powerline-shell
    sudo python setup.py install

    echo -e "${YELLOW} ################## Configuring .bashrc file ###################### ${END}"
    cat ${HOME}/set-up-enviroment/files/powerline-bash.txt  >> ~/.bashrc
    source ~/.bashrc
fi

echo -e "${YELLOW} ################## Finish ###################### ${END}"
