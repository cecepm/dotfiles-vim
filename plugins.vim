" Plugins are managed by vim-plug
call plug#begin('~/.vim/plugged')

" File-type sensible comments for Vim. It can handle embedded syntax.
  Plug 'tomtom/tcomment_vim'

" This is a simple plugin that helps to end certain structures automatically.
" In Ruby, this means adding end after if, do, def and several other keywords
  Plug 'tpope/vim-endwise'

" Gitwrapper inside Vim
  Plug 'tpope/vim-fugitive'

" Repeat.vim remaps `.` in a way that plugins can tap into it.
  Plug 'tpope/vim-repeat'

" The plugin provides mappings to easily delete, change and add such surroundings in pairs.
  Plug 'tpope/vim-surround'

" COC
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

" FZF ❤️  vim
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

" Search
  Plug 'mileszs/ack.vim'

" File Manager
  Plug 'preservim/nerdtree'

" Git Gutter
  Plug 'mhinz/vim-signify'

" Icons
  Plug 'ryanoasis/vim-devicons'

" Colorscheme
  Plug 'joshdick/onedark.vim'
  Plug 'rakr/vim-one'
  Plug 'morhetz/gruvbox'

" Status line
  Plug 'vim-airline/vim-airline'

" Close buffer
  Plug 'chrismccord/bclose.vim'

" Language specific syntax highlighting
  Plug 'arzg/vim-sh'
  Plug 'hashivim/vim-terraform'

" Trailing whitespace to be highlighted in red
  Plug 'bronson/vim-trailing-whitespace'

" Initialize plugin system
call plug#end()
filetype plugin indent on
