  set termguicolors

" tokyonight config
  let g:tokyonight_style = 'night' " available: night, storm
  let g:tokyonight_enable_italic = 0
  let g:tokyonight_transparent_background = 0

" papercolor config
  let g:PaperColor_Theme_Options = {
    \   'theme': {
    \     'default.dark': {
    \       'transparent_background': 1
    \     }
    \   }
    \ }

" gruvbox8 config
  set background=dark
  let g:gruvbox_italics = 0
  let g:gruvbox_italicize_strings = 0
  let g:gruvbox_transp_bg = 1

" Color Scheme
  colorscheme gruvbox8_hard

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
