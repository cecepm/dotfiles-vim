" set default encoding
  set encoding=utf-8
  set termguicolors     " enable true colors support

" color schemes
  let g:gruvbox_contrast_dark = 'hard'
  colorscheme gruvbox
  set background=dark termguicolors cursorline

" macvim
  if has('gui_macvim')
    " download from this repo:
    " https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/
    set guifont=JetBrainsMonoNL\ Nerd\ Font:h16

  " use gui tabs
    set guioptions+=e

  " kill the menubar
    set guioptions-=T
    set guioptions-=m

  " kill the scrollbars
    set guioptions-=r
    set guioptions-=L
  endif

" transparent background (should be combined with transparent terminal)
  if has('nvim')
    hi Normal guibg=none ctermbg=none
    hi LineNr guibg=none ctermbg=none
    hi Folded guibg=none ctermbg=none
    hi NonText guibg=none ctermbg=none
    hi SpecialKey guibg=none ctermbg=none
    hi VertSplit guibg=none ctermbg=none
    hi SignColumn guibg=none ctermbg=none
    hi EndOfBuffer guibg=none ctermbg=none
  endif
