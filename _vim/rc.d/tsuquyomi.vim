" https://github.com/Quramy/tsuquyomi

" If you don't want the popup menu:
" autocmd FileType typescript setlocal completeopt-=menu

" If you want to show a method's signature in the popup menu, set g:tsuquyomi_completion_detail.
" Remarks: This option makes completion slow
" let g:tsuquyomi_completion_detail = 1
let g:tsuquyomi_completion_detail = 0

" autocmd FileType typescript setlocal completeopt+=menu,preview
autocmd FileType typescript setlocal completeopt+=menu,noinsert

autocmd FileType typescript nmap <buffer> <Leader>r <Plug>(TsuquyomiRenameSymbolC)

set ballooneval
autocmd FileType typescript setlocal balloonexpr=tsuquyomi#balloonexpr()

" Integrate with syntastic
let g:tsuquyomi_disable_quickfix = 1
