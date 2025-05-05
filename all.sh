#!/bin/bash

echo "Selected system $1"

if [ $# -eq 0 ]
then
    echo "No arguments passed. Please write your linux distro: debian or arch"
    exit 1
fi

if [ "$1" == "debian" ] || [ "$1" == "ubuntu" ]
then
    sudo apt install -y git cmake build-essential gcc python-pip python curl tmux vim wget
elif [ "$1" == "arch" ]
then
    sudo pacman -S git cmake gcc python-pip python curl tmux vim wget
else 
    echo "Only debian distros or arch linux are available"
    echo "Choose: debian or arch"
    exit 1
fi


./01_vim.sh
./02_tmux.sh
./03_powerline.sh
