
" Textmate(ruby) like insert '=>'
imap <silent> <C-l> =>
imap <silent> <C-k> ->

" Move complete block one line down or up with <M-Down> and <M-Up> keys
vmap <silent> <M-Up> :m'<-2<CR>gv
vmap <silent> <M-Down> :m'>+1<CR>gv

" Jump into tags (and <Alt-Left> to go back)
map <silent> <M-Down> <C-]>
map <silent> <M-Left> <C-T>

" NERD_Commenter
map <silent> <C-x> <Leader>ci

" <F2> NERD tree
map <silent> <F2> <Esc>:NERDTreeToggle<CR>

" <F10> show current syntax highlight group
map <silent> <F10> <Esc>:echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" <F5> RemoveTrailingWhitespaces
nnoremap <F5> :call RemoveTrailingWhitespaces()<CR>

