# 🚀🚀🚀 dotfiles-vim 🚀🚀🚀

My personal vim configuration, always unstable and 🐞 buggy 🐞

## Requirements

#### ripgrep

`ripgrep` or `rg` used for recursively search directories for a regex pattern. On Ubuntu 20.04 you can install from the repo.

 ```
 sudo apt install ripgrep
```

#### xclip (Linux only)

`xclip` used for copy-paste from vim selection. On Ubuntu 20.04 you can install from the repo.

```
sudo apt install xclip
```

## Installation

1. Clone this repo

   ```
   git clone https://github.com/cecepm/dotfiles-vim.git ~/.vim
   ```

2. Create symlink for vimrc

   ```
   ln -s ~/.vim/vimrc ~/.vimrc
   ```

3. Install vim plug

   ```
   curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   ```

4. Install vim plugins, by launching vim, and run this command inside vim.

   ```
   :PlugInstall
   ```

## CoC Installation

### Requirements

#### Node.js

Install Node.js v12.x on Ubuntu 20.04

```
curl -fsSL https://deb.nodesource.com/setup_12.x | sudo -E bash - sudo
sudo apt install -y nodejs
```

#### Yarn

Install Yarn on Ubuntu 20.04

```
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install -y yarn
```

### Install CoC extensions

Install extension using command `CocInstall` inside vim.

```
:CocInstall coc-sh coc-json coc-yaml coc-rust-analyzer coc-pyright
```

### Check CoC Installation

List all installed CoC extensions

```
:CocList extensions
```
