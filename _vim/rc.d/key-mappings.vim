
" Textmate(ruby) like insert '=>' and '->'
imap <silent> <C-l> =>
" Replaced by ultisnippets:
"imap <silent> <C-k> ->

" Move complete block one line down or up with <M-Down> and <M-Up> keys
vmap <silent> <M-Up> :m'<-2<CR>gv
vmap <silent> <M-Down> :m'>+1<CR>gv

" <M-Right> Jump into tag (and <M-Left> to go back)
" map <silent> <M-Right> <C-]>
" map <silent> <M-Left> <C-T>

" <C-x> NERD_Commenter
map <silent> <C-x> <Leader>ci

" Open new tab
map <silent> <M-t> <Esc>:tabnew<CR>

" <F3> NERD tree
map <silent> <F3> <Esc>:NERDTreeToggle<CR>

" <F5> RemoveTrailingWhitespaces
nnoremap <F5> :call RemoveTrailingWhitespaces()<CR>

" <F4> Prettier
map <silent> <F4> <Esc>:Prettier<CR>

" <F9> unset SignColumn background color
map <silent> <F9> <Esc>:hi SignColumn guibg=NONE<CR>

" <F10> show current syntax highlight group
map <silent> <F10> <Esc>:echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" <F12> ALEGoToDefinition
map <silent> <F12> <Esc>:ALEGoToDefinition<CR>
map <silent> <S-F12> <Esc>:ALEGoToDefinitionInVSplit<CR>

