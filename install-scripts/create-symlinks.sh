#!/bin/bash

ZSH_CONFIG_DIR="$PWD/../zsh-config"

#==============
# Create .gitconfig symlinc
#==============
echo -e "Removing ~/.gitconfig..."
rm -rf $HOME/.gitconfig > /dev/null 2>&1

echo -e "Creating ~/.gitconfig symlink..."
ln -sf $PWD/../gitconfig ~/.gitconfig

#==============
# Create .zshrc and additional files
#==============
echo -e "Removing ~/.zshrc..."
rm -rf $HOME/.zhrc > /dev/null 2>&1

echo -e "Creating ~/.zshrc symlink..."
ln -sf $PWD/../zshrc $HOME/.zshrc

echo -e "Creating ~/.aliases symlink..."
ln -sf $ZSH_CONFIG_DIR/aliases $HOME/.aliases

echo -e "Creating ~/.exports symlink..."
ln -sf $ZSH_CONFIG_DIR/exports $HOME/.exports

#==============
# And we are done
#==============
echo -e "\n====== All Done!! ======\n"
