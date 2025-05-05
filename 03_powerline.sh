#!/bin/bash

YELLOW='\e[93m'
END='\e[0m'
#Powerline tools 
if [ ! -d ~/powerline-shell ]; then
    echo -e "${YELLOW} ################## Installing miniforge ###################### ${END}"
    if [ which conda == ""]; then
        mkdir tmp
        wget -O tmp/miniforge.sh https://github.com/conda-forge/miniforge/releases/download/25.3.0-1/Miniforge3-25.3.0-1-Linux-x86_64.sh
        chmod +x tmp/miniforge.sh
        ./tmp/miniforge.sh
    fi

    echo -e "${YELLOW} ################## Installing Powerline ###################### ${END}"
    git clone https://github.com/banga/powerline-shell ~/powerline-shell

    echo -e "${YELLOW} ################## Fonts ###################### ${END}"
    sudo apt install -y fonts-powerline

    echo "Copy patch to folder"
    mkdir ~/powerline-shell/patch
    cp powerline-patch/* ~/powerline-shell/patch/.


    echo -e "${YELLOW} ################## Configuring .bashrc file ###################### ${END}"
    cat files/powerline-bash.txt  >> ~/.bashrc
    source ~/.bashrc

    echo -e "${YELLOW} ################## Applying patch ###################### ${END}"
    cd ~/powerline-shell
    echo -e "Applyint patch for newer versions"
    patch -p1 -N < patch/fix.patch
    # sudo python setup.py install # Deprecated
    pip install .

fi

echo -e "${YELLOW} ################## Finish ###################### ${END}"
