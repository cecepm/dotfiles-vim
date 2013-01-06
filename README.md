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

## Disable Plugins

Disabling vim plugins is easy, just remove symlink from directory bundle.

Examples,

disable plugin vim-powerline,

    rm bundle/vim-powerline

re-enable plugin vim-powerline,

    ln -s bundle-available/vim-powerline bundle/vim-powerline
