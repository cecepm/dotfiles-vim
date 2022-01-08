  set termguicolors

" vim-one
  let g:one_allow_italics = 1

" Color Scheme
  set background=dark
  colorscheme onedark
  " colorscheme gruvbox

" MacVim
  if has('gui_macvim')
  " Use gui tabs
    set guioptions+=e

  " Kill the menubar
    set guioptions-=T
    set guioptions-=m

  " Kill the scrollbars
    set guioptions-=r
    set guioptions-=L

  " Download from this repo
  " https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/
    set guifont=JetBrainsMonoNL\ Nerd\ Font:h16
  endif
