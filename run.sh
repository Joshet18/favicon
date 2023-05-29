#!/bin/bash

if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi

clear

install(){
    cd /var/www/
    tar -cvf BackUP.tar.gz pterodactyl
    echo "Installing favicon..."
    cd /var/www/pterodactyl/public/favicons
    unlink apple-touch-icon.png
    git clone https://github.com/Joshet18/favicon.git
    unlink run.sh
    echo "Favicon installed"
}
echo "[1] Install Favicon"
echo "[2] Exit"

read -p "Please enter a number: " choice
if [ $choice == "1" ]
    then
    install
fi
if [ $choice == "2" ]
    then
    exit
fi
