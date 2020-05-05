" Plugins are managed by Plug. Once VIM is open run :BundleInstall to
" install plugins.
call plug#begin('~/.vim/plugged')


" Plugins requiring no additional configuration or keymaps
  Plug 'tomtom/tcomment_vim'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'pearofducks/ansible-vim'

" Similar to vim git-gutter, but more realtime
  Plug 'mhinz/vim-signify'

" Color-schemes
  Plug 'morhetz/gruvbox' "My favorite theme
  Plug 'kristijanhusak/vim-hybrid-material'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'ajh17/Spacegray.vim'
  Plug 'chriskempson/base16-vim'


" Vim airline configs
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  let g:airline_theme='hybrid'
  let g:airline_powerline_fonts = 1
  let g:airline_left_sep=''
  let g:airline_right_sep=''
  let g:airline#extensions#hunks#enabled = 0
  let g:airline#extensions#ale#enabled = 1
  let g:airline#extensions#tabline#enabled = 1

  " Show just the filename
  let g:airline#extensions#tabline#fnamemod = ':t'


"Supertab code completion"
  Plug 'ervandew/supertab'
    let g:SuperTabContextDefaultCompletionType = "<c-n>"


" AG aka The Silver Searcher
  Plug 'rking/ag.vim'
    nmap g/ :Ag!<space>
    nmap g* :Ag! -w <C-R><C-W><space>
    nmap ga :AgAdd!<space>
    nmap gn :cnext<CR>
    nmap gp :cprev<CR>
    nmap gq :ccl<CR>
    nmap gl :cwindow<CR>


" Markdown syntax highlighting
  Plug 'tpope/vim-markdown'
    augroup mkd
      autocmd BufNewFile,BufRead *.mkd      set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
      autocmd BufNewFile,BufRead *.md       set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
      autocmd BufNewFile,BufRead *.markdown set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
    augroup END


" Vim Dev Icons
  " Plug 'ryanoasis/vim-devicons'


" NERDTree for project drawer
  Plug 'scrooloose/nerdtree'
    let NERDTreeHijackNetrw = 0
    nmap <leader>g :NERDTreeToggle<CR>
    nmap <leader>G :NERDTreeFind<CR>
    let NERDTreeIgnore = ['\.pyc$']
    let NERDTreeMinimalUI=1
    let NERDTreeDirArrows = 1

    " NERDTree folder icons
    let g:NERDTreeDirArrowExpandable = ''
    let g:NERDTreeDirArrowCollapsible = ''

    " Exit vim if only NERDTree is the only window left
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTree with git integration
  Plug 'Xuyuanp/nerdtree-git-plugin'

" Tabular for aligning text
  Plug 'godlygeek/tabular'
    function! CustomTabularPatterns()
      if exists('g:tabular_loaded')
        AddTabularPattern! symbols         / :/l0
        AddTabularPattern! hash            /^[^>]*\zs=>/
        AddTabularPattern! chunks          / \S\+/l0
        AddTabularPattern! assignment      / = /l0
        AddTabularPattern! comma           /^[^,]*,/l1
        AddTabularPattern! colon           /:\zs /l0
        AddTabularPattern! options_hashes  /:\w\+ =>/
      endif
    endfunction

    autocmd VimEnter * call CustomTabularPatterns()

    " shortcut to align text with Tabular
    nmap <Leader>= :Tabularize /=<CR>
    vmap <Leader>= :Tabularize /=<CR>
    nmap <Leader>> :Tabularize /=><CR>
    vmap <Leader>> :Tabularize /=><CR>
    nmap <Leader>; :Tabularize /:<CR>
    vmap <Leader>; :Tabularize /:<CR>


" Unimpaired for keymaps for quicky manipulating lines and files
  Plug 'tpope/vim-unimpaired'
    " Bubble single lines
    nmap <C-Up> [e
    nmap <C-Down> ]e

    " Bubble multiple lines
    vmap <C-Up> [egv
    vmap <C-Down> ]egv


" Asynchronous Lint Engine
  Plug 'w0rp/ale'
    let g:ale_linters = {'python': ['flake8']}
    let g:ale_python_flake8_options = '--ignore="E501,E701,E126,E127,E128,W801,W391"'


" FZF
  let g:fzf_install = 'yes | ./install'
  Plug 'junegunn/fzf', { 'do': g:fzf_install }
    let g:fzf_launcher = "in_new_term %s"


call plug#end()
filetype plugin indent on
