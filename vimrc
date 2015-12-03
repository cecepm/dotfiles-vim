set encoding=utf-8
set nocompatible
filetype off


" Call Vundle for loading/managing other plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" ------------------------------------------------------------------------------
" Plugins

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Show trailing whitespaces
Plugin 'bronson/vim-trailing-whitespace'

" Easy tabular formatting
Plugin 'godlygeek/tabular'

" Syntax and plugin for Nginx
Plugin 'mutewinter/nginx.vim'

" Syntax and plugin for Bind
Plugin 'seveas/bind.vim'

" Easy comment/uncomment
Plugin 'tpope/vim-commentary'

" Git wrapper for Vim
Plugin 'tpope/vim-fugitive'

" Syntax, indent, and filetype plugin files for git
Plugin 'tpope/vim-git'

" Git-Gutter
Plugin 'airblade/vim-gitgutter'

" Syntax and plugin for Markdown
Plugin 'tpope/vim-markdown'

" All about surrounding
Plugin 'tpope/vim-surround'

" Linter
Plugin 'scrooloose/syntastic'

" Nice VIM status line
Plugin 'bling/vim-airline'

" Colorschemes
Plugin 'flazz/vim-colorschemes'

" Automatic closing of quotes
Plugin 'Raimondi/delimitMate'

" Snippet Engine
Plugin 'MarcWeber/ultisnips'

" Snippet Collections
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" ------------------------------------------------------------------------------
" Placeholder if I want to slice vim config into many files
" Load all files *.vim in folder
"runtime! init/**.vim


" ------------------------------------------------------------------------------
" VIM options

" Color
set t_Co=256
syntax enable
set background=dark
colorscheme molokai

" User Interface
set number              " Line numbers on
set cmdheight=2         " Make the command area two lines high
set scrolloff=3         " Scroll when the cursor is 3 lines from edge
set cursorline          " Highlight current line

" Text Wrap
set wrap                " Line wrapping on
set linebreak           " Wrap lines on 'word' boundaries"
if exists('&breakindent')
    set breakindent     " Indent wrapped lines up to the same level
endif"


" Set highlight at column 81 and 121-999
if v:version >= 703
    "let &colorcolumn="81,".join(range(121,999),",")
    set colorcolumn=81
endif

" Text Formatting
set backspace=2         " Delete everything with backspace
set autoindent
set pastetoggle=<F2>
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Searching
set ignorecase          " Case insensitive search
set smartcase
set incsearch
set hlsearch

" Sounds
set noerrorbells
set novisualbell
set t_vb=

" Mouse
set mousehide           " Hide mouse after chars typed
set mouse=a             " Mouse in all modes


" ------------------------------------------------------------------------------
" Plugin configurations

" Syntastic - Python Linter

" Use flake8
let g:syntastic_python_checkers = ['flake8']

" See the pep8 error code documentation for an explanation of the error codes.
" http://pep8.readthedocs.org/en/latest/intro.html#error-codes
let g:syntastic_python_flake8_args = '--ignore="E501,E701,E126,E127,E128,W801"'

" Nginx
au BufRead,BufNewFile /opt/nginx/conf/* if &ft == '' | setfiletype nginx | endif
au BufRead,BufNewFile /opt/nginx/conf/sites-available/* set ft=nginx
au BufRead,BufNewFile /opt/nginx/conf/sites-enabled/* set ft=nginx
au BufRead,BufNewFile /etc/nginx/sites-available/* set ft=nginx
au BufRead,BufNewFile /etc/nginx/sites-enabled/* set ft=nginx

" Powerline
set laststatus=2        " Always show status line
set noshowmode          " Hide the default mode text
                        " (e.g. -- INSERT -- below the statusline)
let g:airline_powerline_fonts = 0

" make Esc happen without waiting for timeoutlen
" fixes Powerline delay
augroup FastEscape
  autocmd!
  au InsertEnter * set timeoutlen=0
  au InsertLeave * set timeoutlen=1000
augroup END


" ------------------------------------------------------------------------------
" Mac Vim

if has('gui_macvim')
  " Font for MacVim
  set guifont=Monaco\ for\ Powerline:h14
  let g:airline_powerline_fonts = 1

  " Hide Toolbar in MacVim
  if has("gui_running")
    set guioptions=egmrt
  endif

  " Use option (alt) as meta key.
  set macmeta
endif

