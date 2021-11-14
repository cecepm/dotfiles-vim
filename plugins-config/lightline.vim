let g:lightline = {}
let g:lightline.colorscheme = 'deus'

let g:lightline.active = {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'filename', 'modified' ] ],
    \   'right': [ [ 'lineinfo' ],
    \              [],
    \              [ 'filetype'] ] }

let g:lightline.component_function = {
    \   'gitbranch': 'FugitiveHead'
    \ }

let g:lightline.tabline = {
    \ 'left': [ [ 'tabs' ] ],
    \ 'right': [ [ 'bufnum'] ] }
