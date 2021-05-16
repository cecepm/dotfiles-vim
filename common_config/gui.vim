" set default encoding
  set encoding=utf-8
  set termguicolors     " enable true colors support

" color schemes
  colorscheme gruvbox
  set background=dark termguicolors cursorline

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
