#!/bin/sh

export CONFIG_PATH=$HOME/Development/.config

# Custom Keybinds
alias ll="eza -lah --git"

# Enable fancy prompt
eval "$(oh-my-posh init $(basename $SHELL) --config ~/Development/.config/omp/theme.omp.toml)"

# Install custom scripts
export PATH=$CONFIG_PATH/scripts:$PATH
