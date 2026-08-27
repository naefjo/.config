#/bin/bash

set -e

apt-get update
apt-get update && apt-get install -y software-properties-common && add-apt-repository universe
apt-get install -y ninja-build gettext-base cmake unzip curl build-essential clangd
rm -rf /opt/nvim
mkdir /opt/nvim
cd /opt/nvim
git clone --branch stable --depth=1 https://github.com/neovim/neovim.git .
make CMAKE_BUILD_TYPE=Release CMAKE_INSTALL_PREFIX=/opt/nvim install
make install

apt install fzf

export PATH=/opt/nvim/bin:$PATH

git clone https://github.com/naefjo/.config.git /root/.config
# Initialize nvim
nvim --headless "+Lazy! sync" +qall
