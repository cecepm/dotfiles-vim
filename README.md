## Howto Install

1. Clone repository

    ```
    git clone https://github.com/cecepm/dotfiles-vim ~/.vim
    ```

2. Link vimrc

    ```
    ln -s ~/.vim/vimrc ~/.vimrc
    ```

3. Install vundle

    ```
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    ```

4. Install configured bundle

    Launch `vim`, and run `:BundleInstall` (or `vim +BundleInstall +qall` for CLI lovers)
