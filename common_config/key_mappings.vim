" easy wrap toggling
  nmap <Leader>w :set wrap!<cr>
  nmap <Leader>W :set nowrap<cr>

" close all other windows (in the current tab)
  nmap gW :only<cr>

" insert blank lines without going into insert mode
  nmap go o<esc>
  nmap gO O<esc>

" mapping the jumping between splits. Hold control while using vim nav.
  nmap <C-J> <C-W>j
  nmap <C-K> <C-W>k
  nmap <C-H> <C-W>h
  nmap <C-L> <C-W>l

" yank from the cursor to the end of the line, to be consistent with C and D.
  nnoremap Y y$

" copy any selected text with pressing y
  xnoremap <Leader>y "+y

" select the lines which were just pasted
  nnoremap vv `[V`]

" compress excess whitespace on current line
  map <Leader>e :s/\v(\S+)\s+/\1 /<cr>:nohl<cr>

" delete all buffers
  map <Leader>d :bufdo bd<cr>

" map spacebar to clear search highlight
  nnoremap <Leader><space> :noh<cr>

" buffer resizing mappings (shift + arrow key)
  nnoremap <S-Up> <c-w>+
  nnoremap <S-Down> <c-w>-
  nnoremap <S-Left> <c-w><<c-w><<c-w><
  nnoremap <S-Right> <c-w>><c-w>><c-w>>

" Press * to search for the term under the cursor or a visual selection and
" then press a key below to replace all instances of it in the current file.
  nnoremap <Leader>r :%s///g<Left><Left>
  nnoremap <Leader>rc :%s///gc<Left><Left><Left>

" The same as above but instead of acting on the whole file it will be
" restricted to the previously visually selected range. You can do that by
" pressing *, visually selecting the range you want it to apply to and then
" press a key below to replace all instances of it in the current selection.
  xnoremap <Leader>r :s///g<Left><Left>
  xnoremap <Leader>rc :s///gc<Left><Left><Left>

" reindent the entire file
  map <Leader>I gg=G``<cr>

" insert the path of currently edited file into a command
" Command mode: Ctrl-P
  cmap <C-S-P> <C-R>=expand("%:p:h") . "/" <cr>

" toggle vertical color column at 80th chars
  nnoremap <silent> <leader>cc :call g:ToggleColorColumn()<cr>

" clean up trailing whitespace
  map <Leader>c :StripTrailingWhitespaces<cr>

" mhinz/vim-grepper
  let g:grepper={}
  let g:grepper.tools=["rg"]

  xmap gr <plug>(GrepperOperator)

  " After searching for text, press this mapping to do a project wide find and
  " replace. It's similar to <leader>r except this one applies to all matches
  " across all files instead of just the current file.
    nnoremap <Leader>R
      \ :let @s='\<'.expand('<cword>').'\>'<CR>
      \ :Grepper -cword -noprompt<CR>
      \ :cfdo %s/<C-r>s//g \| update
      \<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

  " The same as above except it works with a visual selection.
    xmap <Leader>R
        \ "sy
        \ gvgr
        \ :cfdo %s/<C-r>s//g \| update
         \<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

map <F1> :colorscheme gruvbox<CR>
map <F2> :colorscheme base16-default-dark<CR>
map <F3> :colorscheme hybrid_reverse<CR>
map <F4> :colorscheme PaperColor<CR>
map <F5> :colorscheme spacegray<CR>
