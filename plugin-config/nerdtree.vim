  let NERDTreeHijackNetrw = 0
  let NERDTreeIgnore = ['\.pyc$']
  let NERDTreeMinimalUI= 1
  let NERDTreeDirArrows = 1

" NERDTree folder icons
  let g:NERDTreeDirArrowExpandable = '▶'
  let g:NERDTreeDirArrowCollapsible = '▼'

" Exit vim if only NERDTree is the only window left
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
  autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
      \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
