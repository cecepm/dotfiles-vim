" use gui tabs
  set guioptions+=e

" kill the menubar
  set guioptions-=T
  set guioptions-=m

" kill the scrollbars
  set guioptions-=r
  set guioptions-=L

" set default font
  set guifont=SauceCodePro\ Nerd\ Font\ Mono\ 13

" initial window size
  set lines=45 columns=120

" pretty but not terminal-compatible color scheme
  " colorscheme codeschool
  " colorscheme space-vim-dark
  colorscheme gruvbox

runtime! custom_config/*.gvim
