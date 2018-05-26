#!/bin/bash

#==============
# Create .gitconfig symlinc
#==============
echo -e "Removing ~/.gitconfig..."
rm -rf $HOME/.gitconfig > /dev/null 2>&1

echo -e "Creating ~/.gitconfig symlink..."
ln -sf $PWD/../gitconfig ~/.gitconfig

#==============
# And we are done
#==============
echo -e "\n====== All Done!! ======\n"
