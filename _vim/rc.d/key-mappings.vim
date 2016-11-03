
" Textmate(ruby) like insert '=>' and '->'
imap <silent> <C-l> =>
" Replaced by ultisnippets:
"imap <silent> <C-k> ->

" Move complete block one line down or up with <M-Down> and <M-Up> keys
vmap <silent> <M-Up> :m'<-2<CR>gv
vmap <silent> <M-Down> :m'>+1<CR>gv

" <M-Right> Jump into tag (and <M-Left> to go back)
map <silent> <M-Right> <C-]>
map <silent> <M-Left> <C-T>

" <C-x> NERD_Commenter
map <silent> <C-x> <Leader>ci

" <F2> NERD tree
map <silent> <F2> <Esc>:NERDTreeToggle<CR>

" <F10> show current syntax highlight group
map <silent> <F10> <Esc>:echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" <F5> RemoveTrailingWhitespaces
nnoremap <F5> :call RemoveTrailingWhitespaces()<CR>

