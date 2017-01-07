" set default encoding
  set encoding=utf-8

" color schemes
  set background=dark
  colorscheme solarized

" solarized options
  let g:solarized_visibility = "high"
  let g:solarized_contrast = "high"

" for macvim
  if has('gui_macvim')
    set guifont=Literation\ Mono\ Powerline:h12
    set linespace=4

    " hide toolbar in MacVim
    if has("gui_running")
      set guioptions=egmrt
    endif

    " use option (alt) as meta key.
    set macmeta
  endif
