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

One of my favorit fonts:

```
curl -L https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/SourceCodePro/Regular/complete/Sauce%20Code%20Pro%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf \
  --output ~/.fonts/'Sauce Code Pro Nerd Font Complete Mono.ttf'
```

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
