
let g:UltiSnipsSnippetDirectories = [ 'UltiSnips', 'my-snippets' ]

"=> https://github.com/SirVer/ultisnips/issues/519

" inoremap <TAB> {{{1
" Next menu item, expand snippet, jump to next placeholder or insert literal tab
let g:UltiSnipsJumpForwardTrigger="<NOP>"
let g:ulti_expand_or_jump_res = 0
function! ExpandSnippetOrJumpForwardOrReturnTab()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<TAB>"
    endif
endfunction
inoremap <expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ "<C-R>=ExpandSnippetOrJumpForwardOrReturnTab()<CR>"
" snoremap <TAB> {{{1
" jump to next placeholder otherwise do nothing
snoremap <buffer> <silent> <TAB>
    \ <ESC>:call UltiSnips#JumpForwards()<CR>

" inoremap <S-TAB> {{{1
" previous menu item, jump to previous placeholder or do nothing
let g:UltiSnipsJumpBackwordTrigger = "<NOP>"
inoremap <expr> <S-TAB>
    \ pumvisible() ? "\<C-p>" :
    \ "<C-R>=UltiSnips#JumpBackwards()<CR>"

" snoremap <S-TAB> {{{1
" jump to previous placeholder otherwise do nothing
snoremap <buffer> <silent> <S-TAB>
    \ <ESC>:call UltiSnips#JumpBackwards()<CR>

" inoremap <CR> {{{1
" expand snippet, close menu or insert newline
let g:UltiSnipsExpandTrigger = "<NOP>"
let g:ulti_expand_or_jump_res = 0
inoremap <silent> <CR> <C-r>=<SID>ExpandSnippetOrReturnEmptyString()<CR>
function! s:ExpandSnippetOrReturnEmptyString()
    if pumvisible()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<C-y>\<CR>"
    endif
    else
        return "\<CR>"
endfunction

" inoremap <C-h> {{{1
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"

" inoremap <BS> {{{1
inoremap <expr><BS>  neocomplete#smart_close_popup()."\<C-h>"
