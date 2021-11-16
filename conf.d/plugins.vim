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

" This plugin improves the commit buffer.
  Plug 'rhysd/committia.vim'

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
  Plug 'lifepillar/vim-gruvbox8'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'ghifarit53/tokyonight-vim'

" Status line
  Plug 'itchyny/lightline.vim'
  Plug 'mengelbrecht/lightline-bufferline'

" Close buffer
  Plug 'chrismccord/bclose.vim'

" Markdown
  Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'

" Distraction free mode
  Plug 'junegunn/goyo.vim'

" Trailing whitespace to be highlighted in red
  Plug 'bronson/vim-trailing-whitespace'

" Initialize plugin system
call plug#end()
filetype plugin indent on
