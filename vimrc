" =================================================================
" Vim configuration (.vimrc) with individual config files!
" based on https://github.com/mutewinter/dot_vim/blob/master/vimrc 
" =================================================================

" Call pathogen for loading other plugins
call pathogen#infect()

" Automatically detect file types.
filetype plugin indent on

" Platform (Windows, Mac, etc.) configuration.
source ~/.vim/platforms.vim

" All of the Vim configuration.
source ~/.vim/config.vim

" All hotkeys, not depedant on plugins, are bound here.
source ~/.vim/bindings.vim

" Plugin-specific configuration.
source ~/.vim/plugin_config.vim

" Small custom functions.
"source ~/.vim/functions.vim

" Auto commands.
source ~/.vim/autocmds.vim
