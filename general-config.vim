" required for several plugins
  set nocompatible

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
  set encoding=utf-8

" don't abandon buffers when unloading
  set hidden

" Some servers have issues with backup files, see #649.
  set nobackup
  set nowritebackup

" set temporary directory (don't litter local dir with swp/tmp files)
  set directory=/tmp/

" Give more space for displaying messages.
  set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
  set updatetime=300

" Don't pass messages to |ins-completion-menu|.
  set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
  if has("nvim-0.5.0") || has("patch-8.1.1564")
    " Recently vim can merge signcolumn and number column into one
    set signcolumn=number
  else
    set signcolumn=yes
  endif

" enable syntax highlighting
  syntax on

" don't wrap long lines
  set nowrap

" show commands as we type them
  set showcmd

" highlight matching brackets
  set showmatch

" scroll the window when we get near the edge
  set scrolloff=4 sidescrolloff=10

" use 2 spaces for tabs
  set expandtab tabstop=2 softtabstop=2 shiftwidth=2
  set smarttab

" enable line numbers, and don't make them any wider than necessary
  set number numberwidth=2
  set rnu

" show the first match as search strings are typed
  set incsearch

" highlight the search matches
  set hlsearch

" highlight cursor line
  set cursorline

" searching is case insensitive when all lowercase
  set ignorecase smartcase

" pick up external file modifications
  set autoread

" match indentation of previous line
  set autoindent

" don't blink the cursor
  set guicursor=a:blinkon0

" show status line
  set laststatus=2

" show tab line
  set showtabline=2

" When lines are cropped at the screen bottom, show as much as possible
  set display=lastline

" flip the default split directions to sane ones
  set splitright
  set splitbelow

" don't beep for errors
  set visualbell

" make backspace work in insert mode
  set backspace=indent,eol,start

" highlight trailing whitespace
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
  set list

" have the mouse enabled all the time
  set mouse=a

" use tab-complete to see a list of possiblities when entering commands
  set wildmode=list:longest,full

" allow lots of tabs
  set tabpagemax=20

" clipboard
  if has('nvim')
    set clipboard+=unnamedplus
  else
    set clipboard=unnamedplus
  endif
