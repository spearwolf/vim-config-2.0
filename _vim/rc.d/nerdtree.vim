" NERDTree settings

let g:NERDTreeWinPos        = "right"
let g:NERDTreeShowBookmarks = 0
let g:NERDTreeStatusLine    = 1

let g:NERDTreeDirArrowExpandable  = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

