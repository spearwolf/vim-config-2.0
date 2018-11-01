" vim dark theme

" #==--- dark theme ------- --  -
set background=dark

colorscheme base16-grayscale-dark

" additional custom color modifications
hi SignColumn guibg=NONE
hi VertSplit guibg=NONE
hi Visual term=reverse ctermbg=11 guibg=#205060
hi Error term=reverse ctermfg=0 ctermbg=0 guibg=#440000 guifg=#ff3300
hi LineNr ctermfg=9 guibg=#161616 guifg=#3a3a3a

" o===)-------- -
" airline
" o===)-------- -

let g:airline_theme = 'hybrid'

