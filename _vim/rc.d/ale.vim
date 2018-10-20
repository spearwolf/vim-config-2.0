let g:ale_sign_column_always = 1

let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

let g:ale_echo_msg_error_str = 'ERROR'
let g:ale_echo_msg_warning_str = 'WARNING'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
" set statusline+=%{ALEGetStatusLine()}

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 1
"let g:ale_javascript_eslint_use_global = 1

" Enable completion where available.
let g:ale_completion_enabled = 1

" 5.ix. How can I use the quickfix list instead of the loclist?
" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 1

"let g:ale_linters = { 'javascript': ['jshint', 'eslint', 'standard'] }
"let g:ale_linters = { 'javascript': ['standard'] }
let g:ale_linters = { 'javascript': ['eslint', 'flow'], 'html': ['tidy'], 'css': ['stylelint'], 'typescript': ['tslint', 'tsserver', 'typecheck'] }

let g:ale_fixers = {
\   '*': ['trim_whitespace'],
\}

let g:ale_html_tidy_options = '-q -e -language en -config .tidy.conf'

func! s:JavascriptToggleLinter()
    execute "normal \<Plug>(ale_toggle)"
    if g:ale_linters['javascript'][0] == 'eslint'
        let g:ale_linters = { 'javascript': ['standard', 'flow'] }
    elseif g:ale_linters['javascript'][0] == 'standard'
        let g:ale_linters = { 'javascript': ['eslint', 'flow'] }
    endif
    execute "normal \<Plug>(ale_toggle)"
    echo g:ale_linters['javascript'][0]
endf

command JavascriptToggleLinter :call s:JavascriptToggleLinter()

" <F3> toggle javascript linters: eslint -> standard -> eslint
" map <silent> <F4> <Esc><Plug>(ale_toggle)<CR>:call JavascriptToggleLinter()<CR><Plug>(ale_toggle)<CR>:echo g:ale_linters['javascript'][0]<CR>
map <silent> <F3> <Esc>:call JavascriptToggleLinter()<CR>

