#!/bin/sh

CURRENT_SHELL=$(basename $SHELL)

export CONFIG_PATH=$HOME/Development/.config

# Custom Keybinds
alias ll="eza -lah --git"

# Enable fancy prompt
eval "$(oh-my-posh init $CURRENT_SHELL --config ~/Development/.config/omp/theme.omp.toml)"

# Bash integration
if [ -n "$BASH_VERSION" ]; then
  eval "$(fzf --bash)"
fi

# Zsh integration
if [ -n "$ZSH_VERSION" ]; then
  source <(fzf --zsh)
fi

# Install custom scripts
export PATH=$CONFIG_PATH/scripts:$PATH
