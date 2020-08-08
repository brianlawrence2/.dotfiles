#!/bin/bash

set -e

echo "Update packages"
sudo apt-get update -y

echo "Instal packages"
echo "...nothing here yet"

echo "installing rust"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

echo "backing up $HOME/.bashrc if exists and symlinking $(pwd)/.bashrc"
if [ -f "$HOME/.bashrc" ]; then 
    mv $HOME/.bashrc $HOME/.bashrc-bkp
fi
ln -s $(pwd)/.bashrc $HOME/


