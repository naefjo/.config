#/bin/bash

apt-get install ninja-build gettext cmake unzip curl build-essential -y
apt-get install clangd
cd /
git clone --branch stable --depth=1 https://github.com/neovim/neovim.git
cd neovim
sudo make CMAKE_BUILD_TYPE=Release
sudo make CMAKE_INSTALL_PREFIX=$HOME/local/nvim install
sudo make install
