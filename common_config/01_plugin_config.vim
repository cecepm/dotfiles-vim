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

  let g:airline_theme='gruvbox'
  let g:airline_powerline_fonts = 1
  " let g:airline_section_b = '%{getcwd()}'                " in section B of the status line display the CWD
  let g:airline_left_sep=''
  let g:airline_right_sep=''
  let g:airline#extensions#hunks#enabled = 0
  let g:airline#extensions#ale#enabled = 1

  " TABLINE:
  let g:airline#extensions#tabline#enabled = 1           " enable airline tabline
  let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline
  let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
  let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)
  let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab
  let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right
  let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline
  let g:airline#extensions#tabline#tab_min_count = 2     " minimum of 2 tabs needed to display the tabline
  let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline
  let g:airline#extensions#tabline#show_tab_nr = 0       " disable tab numbers
  let g:airline#extensions#tabline#show_tab_type = 0     " disables the weird ornage arrow on the tabline
  let g:airline#extensions#tabline#exclude_preview = 1   " disable display preview window buffer in the tabline


"Supertab code completion"
  Plug 'ervandew/supertab'
    let g:SuperTabContextDefaultCompletionType = "<c-n>"


" ACK
  Plug 'mileszs/ack.vim'

    " Use ripgrep for searching ⚡️
    " Options include:
    " --vimgrep -> Needed to parse the rg response properly for ack.vim
    " --type-not sql -> Avoid huge sql file dumps as it slows down the search
    " --smart-case -> Search case insensitive if all lowercase pattern, Search case sensitively otherwise
    let g:ackprg = 'rg --vimgrep --type-not sql --smart-case'

    " Auto close the Quickfix list after pressing '<enter>' on a list item
    let g:ack_autoclose = 1

    " Any empty ack search will search for the work the cursor is on
    let g:ack_use_cword_for_empty_search = 1

    " Don't jump to first match
    cnoreabbrev Ack Ack!

    " Maps <leader>/ so we're ready to type the search keyword
    nnoremap <Leader>/ :Ack!<Space>

    " Navigate quickfix list with ease
    nnoremap <silent> [q :cprevious<CR>
    nnoremap <silent> ]q :cnext<CR>


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
  Plug 'junegunn/fzf.vim'

  let g:fzf_layout = { 'down': '~40%' }
  nnoremap <Leader>t : Files<cr>

" vim-grepper
  Plug 'mhinz/vim-grepper'


call plug#end()
filetype plugin indent on
