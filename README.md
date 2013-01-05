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
