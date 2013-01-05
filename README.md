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

## Plugins Bundle

All plugins installed in bundle-available directory using git submodule. To 
activate the plugins, create symlink from bundle-available to directory bundle.

For deactivating vim plugins, remove symlink from directory bundle.

Examples,

To de-activate plugin vim-powerline,

    rm bundle/vim-powerline

To re-activate plugin vim-powerline,

    ln -s bundle-available/vim-powerline bundle/vim-powerline
