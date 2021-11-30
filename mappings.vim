" Disable annoying F1
  nmap <F1> <Nop>

" Go to next buffer
  nnoremap <Tab> :bnext<CR>

" Reload vimrc
  nnoremap gsv :source $MYVIMRC<CR>

" Insert blank lines without going into insert mode
  nmap go o<Esc>
  nmap gO O<Esc>

" Mapping the jumping between splits. Hold control while using vim nav.
  nmap <C-j> <C-w>j
  nmap <C-k> <C-w>k
  nmap <C-h> <C-w>h
  nmap <C-l> <C-w>l

" Copy paste from vim
  " vnoremap <C-x> :!pbcopy<CR><CR>
  " vnoremap <C-c> :w !pbcopy<CR><CR>
  vnoremap <C-c> "+y

" Change Color Scheme
  nmap <F5> :colorscheme gruvbox-material<CR>
  nmap <F6> :colorscheme PaperColor<CR>
  nmap <F7> :colorscheme tokyonight<CR>

"
" plugins mappings
"

" FZF
  nnoremap <silent> <Space><Space> :Files<CR>
  nnoremap <silent> <Space>g :GFiles<CR>
  nnoremap <silent> <Space>C :Commits<CR>
  nnoremap <silent> <Space>c :BCommits<CR>
  nnoremap <silent> <Space>b :Buffer<CR>

" NERDTree
  nnoremap <Leader>g :NERDTreeToggle<CR>
  nnoremap <Leader>G :NERDTreeFind<CR>

" Close Buffer using Bclose
  nnoremap <C-q> :Bclose<CR>
