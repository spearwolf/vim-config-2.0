
let g:ale_sign_column_always = 1

let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
set statusline+=%{ALEGetStatusLine()}

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 1
"let g:ale_javascript_eslint_use_global = 1

"let g:ale_linters = { 'javascript': ['jshint', 'eslint', 'standard'] }
let g:ale_linters = { 'javascript': ['eslint'] }
"let g:ale_linters = { 'javascript': ['standard'] }

func! ToggleAleJsLinter()
    if g:ale_linters['javascript'][0] == 'eslint'
        let g:ale_linters = { 'javascript': ['standard'] }
    elseif g:ale_linters['javascript'][0] == 'standard'
        let g:ale_linters = { 'javascript': ['jshint'] }
    elseif g:ale_linters['javascript'][0] == 'jshint'
        let g:ale_linters = { 'javascript': ['eslint'] }
    endif
endf

" <F3> toggle javascript linters: eslint -> standard -> jshint ->
map <silent> <F3> <Esc><Plug>(ale_toggle)<CR>:call ToggleAleJsLinter()<CR><Plug>(ale_toggle)<CR>:echo g:ale_linters['javascript'][0]<CR>

