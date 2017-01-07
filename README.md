## Howto Install

1. Clone repository

    ```
    git clone https://github.com/cecepm/dotfiles-vim ~/.vim
    ```

2. Link vimrc

    ```
    ln -s ~/.vim/vimrc ~/.vimrc
    ```

3. Install vim plug

    ```
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ```

4. Install configured bundle

    Launch `vim`, and run `:PlugInstall`


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
