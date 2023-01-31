# Neovim Configs

## Get the latest version of Neovim

Install newest version of neovim via scoop on Windows via scoop:

```shell
scoop bucket add versions
scoop install neovim-nightly
```

Install newest version of neovim  on Linux:

```shell
cd ~/download
git clone https://github.com/neovim/neovim
cd neovim
sudo make CMAKE_BUILD_TYPE=Release install
cd ~
sudo rm -r neovim
```

## Dependencies

Install lua, node, npm.

Install nvm on Ubuntu:

```bash
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
```

```bash
sudo apt install nodejs
sudo apt install npm
```

Install nvm on Windows via scoop:

First, install nvm:

```shell
scoop install nvm
```

Then, install the latest stable verfion of node.

```shell
nvm install --lts
```

Install tree-sitter-cli:

```shell
npm install -g tree-sitter-cli
```

## install packer manually

On Windows:

```shell
git clone https://github.com/wbthomason/packer.nvim $LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim
```

On Linux:

```shell
git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
