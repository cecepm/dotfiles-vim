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
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    ```

4. Install configured bundle

    Launch `vim`, and run `:PluginInstall` (or `vim +PluginInstall +qall` for CLI lovers)

## Screenshot

![vim](https://raw.githubusercontent.com/cecepm/dotfiles/master/screenshot/vim.png)

## Notes

For python linter (syntastic plugin), we need to install pyflake. Install it
using pip.

```
pip install pyflakes
```
