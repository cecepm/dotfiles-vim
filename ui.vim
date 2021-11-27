" set termguicolors

" tokyonight config
  let g:tokyonight_style = 'night' " available: night, storm
  let g:tokyonight_enable_italic = 1
  let g:tokyonight_transparent_background = 0

" papercolor config
  let g:PaperColor_Theme_Options = {
    \   'theme': {
    \     'default.dark': {
    \       'transparent_background': 1
    \     }
    \   }
    \ }

" gruvbox material
  let g:gruvbox_material_background = 'medium'
  let g:gruvbox_material_transparent_background = 1

" Color Scheme
  set background=dark
  colorscheme gruvbox-material

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
