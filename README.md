## Installing

Backup your configuration:

    mv ~/.vim ~/.vim.bak
    mv ~/.vimrc ~/.vimrc.bak

Install this configuration:

    git clone git://github.com/cecepm/dotfiles-vim.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    cd ~/.vim
    git submodule init
    git submodule update

## Updating

    git pull
    git submodule init
    git submodule update

## Plugins

### Installation

Command-T Plugins

    cd bundle-available/command-t/ruby/command-t
    ruby extconf.rb
    make

Detailed installation instructions are available at [Command-T homepage](https://wincent.com/products/command-t).

### Disable Plugins

Disabling vim plugins is easy, just remove symlink from directory bundle.

Examples,

disable plugin vim-powerline,

    rm bundle/vim-powerline

re-enable plugin vim-powerline,

    cd bundle
    ln -s ../bundle-available/vim-powerline vim-powerline
