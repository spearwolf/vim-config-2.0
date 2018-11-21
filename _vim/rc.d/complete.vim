
set completeopt=menu
" set completeopt=menu,preview

" http://vim.wikia.com/wiki/VimTip1228
inoremap <expr> <CR>       pumvisible() ? "\<C-e>" : "\<CR>"

inoremap <expr> <Esc>      pumvisible() ? "\<C-y>\<Esc>" : "\<Esc>"
inoremap <expr> <Space>    pumvisible() ? "\<C-y>\<Space>" : "\<Space>"

inoremap <expr> <TAB>      pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

