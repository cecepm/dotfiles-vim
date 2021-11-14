# CoC Installation

## Requirements

### Node.js

Install Node.js v12.x on Ubuntu 20.04

```
curl -fsSL https://deb.nodesource.com/setup_12.x | sudo -E bash - sudo
sudo apt install -y nodejs
```

### Yarn

Install Yarn on Ubuntu 20.04

```
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install -y yarn
```

## Install CoC extensions

Install extension using command `CocInstall` inside vim.

```
CocInstall coc-sh coc-json coc-yaml coc-rust-analyzer coc-pyright
```

## Check

List all installed CoC extensions

```
CocList extensions
```
