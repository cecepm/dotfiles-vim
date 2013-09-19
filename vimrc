set encoding=utf-8
set nocompatible
filetype off


" Call Vundle for loading/managing other plugins
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


" ------------------------------------------------------------------------------
" Bundles

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Show trailing whitespaces
Bundle 'bronson/vim-trailing-whitespace'

" Syntax and plugin for Nginx
Bundle 'mutewinter/nginx.vim'

" Syntax and plugin for Bind
Bundle 'seveas/bind.vim'

" Syntax and plugin for Markdown
Bundle 'tpope/vim-markdown'

" All about surrounding
Bundle 'tpope/vim-surround'

" Easy comment/uncomment
Bundle 'tpope/vim-commentary'

" Nice VIM status line
Bundle 'bling/vim-airline'

" Colorschemes
Bundle 'chriskempson/vim-tomorrow-theme'

" Automatic closing of quotes
Bundle 'Raimondi/delimitMate'

" Snippet Engine
Bundle 'MarcWeber/ultisnips'

" Snippet Collections
Bundle 'honza/vim-snippets'

" Automatically detect file type
filetype plugin indent on


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
colorscheme Tomorrow-Night-Eighties

" User Interface
set number              " Line numbers on
set nowrap              " Line wrapping off
set cmdheight=2         " Make the command area two lines high
set scrolloff=3         " Scroll when the cursor is 3 lines from edge
set cursorline          " Highlight current line
set laststatus=2        " Always show status line

" Set highlight at column 81 and 121-999
let &colorcolumn="81,".join(range(121,999),",")

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

" Nginx
au BufRead,BufNewFile /opt/nginx/conf/* if &ft == '' | setfiletype nginx | endif
au BufRead,BufNewFile /opt/nginx/conf/sites-available/* set ft=nginx
au BufRead,BufNewFile /opt/nginx/conf/sites-enabled/* set ft=nginx


" Powerline Symbols
let g:airline_powerline_fonts = 1


" ------------------------------------------------------------------------------
" Mac Vim

if has('gui_macvim')
  " MacVim

  " Custom Menlo font for Powerline
  " From: https://github.com/Lokaltog/vim-powerline/wiki/Patched-fonts
  set guifont=Menlo\ for\ Powerline:h11

  " Hide Toolbar in MacVim
  if has("gui_running")
    set guioptions=egmrt
  endif

  " Use option (alt) as meta key.
  set macmeta
endif

