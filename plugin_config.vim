" ----------------
" NERDTree Plugins
" ----------------

" toggle NERDTree shortcut: CTRL+n
map <C-n> :NERDTreeToggle<CR>     

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" -------------
" Nginx Plugins
" -------------

" custom nginx installation in /opt/nginx
au BufRead,BufNewFile /opt/nginx/conf/*,/opt/nginx/conf/sites-available/*,/opt/nginx/conf/sites-enabled/* if &ft == '' | setfiletype nginx | endif


" -----------------
" Powerline Plugins
" -----------------

" fancy vim status
let g:Powerline_symbols = 'fancy'


" -----------------
" T-comment Plugins
" -----------------

" faster commenting shortcut: \c
map <leader>c <c-_><c-_>
