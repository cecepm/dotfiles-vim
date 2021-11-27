" if has_key(environ(), 'TMUX')
"   augroup tmux_something
"     autocmd VimResume  * call system('tmux set status off')
"     autocmd VimEnter   * call system('tmux set status off')
"     autocmd VimLeave   * call system('tmux set status on')
"     autocmd VimSuspend * call system('tmux set status on')
"   augroup END
" endif
