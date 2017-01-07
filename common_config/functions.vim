" via: http://rails-bestpractices.com/posts/60-remove-trailing-whitespace
" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
command! StripTrailingWhitespaces call <SID>StripTrailingWhitespaces()
autocmd BufWritePre <buffer> call <SID>StripTrailingWhitespaces()


" Toggle vertical color column at 80th chars
function! g:ToggleColorColumn()
  if &colorcolumn != ''
    set colorcolumn&
  else
    set colorcolumn=80
  endif
endfunction
