" -----------------
" T-comment Plugins
" -----------------
map <leader>c <c-_><c-_>    " faster commenting using.


" -------------
" Nginx Plugins
" -------------
au BufRead,BufNewFile /opt/nginx/conf/*,/opt/nginx/conf/sites-available/*,/opt/nginx/conf/sites-enabled/* if &ft == '' | setfiletype nginx | endif
