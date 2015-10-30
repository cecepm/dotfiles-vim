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

" Easy tabular formatting
Bundle 'godlygeek/tabular'

" Syntax and plugin for Nginx
Bundle 'mutewinter/nginx.vim'

" Syntax and plugin for Bind
Bundle 'seveas/bind.vim'

" Easy comment/uncomment
Bundle 'tpope/vim-commentary'

" Git wrapper for Vim
Bundle 'tpope/vim-fugitive'

" Syntax, indent, and filetype plugin files for git
Bundle 'tpope/vim-git'

" Git-Gutter
Bundle 'airblade/vim-gitgutter'

" Syntax and plugin for Markdown
Bundle 'tpope/vim-markdown'

" All about surrounding
Bundle 'tpope/vim-surround'

" Nice VIM status line
Bundle 'bling/vim-airline'

" Colorschemes
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'w0ng/vim-hybrid'
Bundle 'tomasr/molokai'

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
"colorscheme Tomorrow-Night-Eighties

let g:molokai_original = 0
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

