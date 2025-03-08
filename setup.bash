#!/bin/bash

#setup nvim config
ln -s $PWD/nvim/ ~/.config/

# sets up aliases and paths to my scripts
echo "source $PWD/shell/shell-extensions" >>$HOME/.zshrc
