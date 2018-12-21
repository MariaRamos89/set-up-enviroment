#!/bin/bash

YELLOW='\e[93m'
END='\e[0m'
#Vim tools 
if [ ! -d ~/powerline-shell ]; then
    echo -e "${YELLOW} ################## Installing Powerline ###################### ${END}"
    git clone https://github.com/banga/powerline-shell ~/powerline-shell

    echo -e "${YELLOW} ################## Configuring .bashrc file ###################### ${END}"
    cat ${HOME}/set-up-enviroment/files/powerline-bash.txt  >> ~/.bashrc
    source ~/.bashrc

    echo -e "${YELLOW} ################## Fonts ###################### ${END}"
    sudo apt install -y fonts-powerline

    cd ~/powerline-shell
    echo -e "DO  'sudo python setup.py install' to finish the installation on powerline"
fi

echo -e "${YELLOW} ################## Finish ###################### ${END}"
