#!/bin/bash


#Installing zsh


sudo dnf install zsh zsh-autosuggestions zsh-syntax-highlighting curl

#installing oh-my-zsh


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo enjoy zsh on fedora
