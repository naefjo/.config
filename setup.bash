#!/bin/bash

cd "$(dirname "$0")"

#setup nvim config
ln -s $PWD/nvim/ ~/.config/
ln -s $PWD/ghostty/ ~/.config/

# sets up aliases and paths to my scripts
CURRENT_SHELL=$(basename $SHELL)
CURRENT_SHELL_RC="$HOME/.${CURRENT_SHELL}rc"
echo ${CURRENT_SHELL_RC}
! grep -q "shell-extensions.sh" "${CURRENT_SHELL_RC}" &&
  echo "source $PWD/shell/shell-extensions.sh" >>$CURRENT_SHELL_RC ||
  echo "Shell extensions already installed."
