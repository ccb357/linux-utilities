#!/bin/bash


#Installing Zsh



sudo apt install zsh zsh-autosuggestions zsh-syntax-highlighting


#git

sudo apt install git

echo git is required to clone Oh my zsh
#Installing ohmyzsh



sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


echo Enjoy Zsh on Ubuntu!
