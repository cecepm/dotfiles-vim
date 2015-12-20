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

![vim](https://raw.githubusercontent.com/cecepm/dotfiles/master/screenshot/vim_20151218.png)


## Fonts

Get and install [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts).

## Notes

For python linter (syntastic plugin), we need to install pyflake. Install it
using pip.

```
pip install flake8
pip install pyflakes
```

or in Ubuntu install via apt-get

```
sudo apt-get install python-flake8 pyflakes
```
