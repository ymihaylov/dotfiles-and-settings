#!/bin/bash

mkdir -p $HOME/bin

cp ./.gitconfig $HOME/.gitconfig
cp ./.zshrc $HOME/.zshrc

cp ./bin/custom_diff.sh $HOME/bin/gdiff
chmod +rx $HOME/bin/gdiff

echo 'DONE!'
