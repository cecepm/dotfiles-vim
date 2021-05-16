" use gui tabs
  set guioptions+=e

" kill the menubar
  set guioptions-=T
  set guioptions-=m

" kill the scrollbars
  set guioptions-=r
  set guioptions-=L

" set default font
  set guifont=JetBrains\ Mono\ Medium\ 13

" initial window size
  set lines=45 columns=120

" retro color scheme
  colorscheme gruvbox

runtime! custom_config/*.gvim
