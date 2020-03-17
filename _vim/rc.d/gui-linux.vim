" gui_gtk2/3

set guioptions-=m
set guioptions+=i
" set guioptions+=d

" ale
let g:ale_sign_error = '😠'
let g:ale_sign_warning = '💥'
" 💥
" 💣
" 😱
" 😠
" 💥
" 💣
" 💀
" 🤢
" 🦄

" New tab Shift-Alt-t
map <silent> <S-A-t> <Esc>:tabnew<CR>
" map <silent> <Leader-A-t> <Esc>:tabnew<CR>
" Wipe tab
map <silent> <S-A-w> <Esc>:bw!<CR>

" Navigate between tabs: ctrl+alt+(left|right)
"map <silent> <C-A-Left> gT
"map <silent> <C-A-Right> gt

let g:enable_bold_font = 1

" set guifont=Go\ Mono\ 13
" set guifont=Courier\ 10\ Pitch\ 11
" set guifont=Ubuntu\ Mono\ 14
" set guifont=Fira\ Code\ 12
" set guifont=Inconsolata\ 13
" set guifont=Monospace\ 10
" set linespace=4
" set linespace=5

" set guifont=Fira\ Mono\ 10
" set guifont=Cascadia\ Code\ 10

set guifont=JetBrains\ Mono\ Medium\ 10
set linespace=5

"set lines=30 columns=105
" set lines=42 columns=130
set lines=26 columns=120

" #==--- dark colorschemes ------- --  -
"set background=dark
"colorscheme molokayo
"colorscheme zeroOne-Dark
"colorscheme OceanicNext
"colorscheme PaperColor
"colorscheme base16-tomorrow-night
"colorscheme spacegray
"colorscheme tender

let g:sierra_Twilight = 1
let g:sierra_Nevada = 1
"colorscheme sierra

" pencil colorscheme config
let g:pencil_higher_contrast_ui = 1   " 0=low (def), 1=high
let g:pencil_neutral_headings = 0   " 0=blue (def), 1=normal
let g:pencil_neutral_code_bg = 1   " 0=gray (def), 1=normal
let g:pencil_spell_undercurl = 1       " 0=underline, 1=undercurl (def)
let g:pencil_terminal_italics = 1

" theme === {{{
"
" #==--- light colorschemes ------- --  -
" set background=light
"colorscheme snowcrystal
"colorscheme zeroOne-Light
"colorscheme zeroOne-LightComic
" colorscheme PaperColor
" colorscheme one
" colorscheme base16-atelier-seaside-light
" hi SignColumn guibg=NONE

" #==--- light colorschemes ------- --  -
" set background=dark
" colorscheme zeroOne-Dark

" colorscheme base16-grayscale-dark
" hi SignColumn guibg=NONE
" hi VertSplit guibg=NONE
" hi Visual term=reverse ctermbg=11 guibg=#205060
" hi Error term=reverse ctermfg=0 ctermbg=0 guibg=#440000 guifg=#ff3300

" light theme
" let g:airline_theme = 'kalisi'
" let g:airline_theme = 'powerlineish'
" let g:airline_theme = 'minimalist'
"
" --- }}}

" runtime! rc.d/dark-theme.vim

" set background=dark
" colorscheme PaperColor " one onedark PaperColor
" let g:airline_theme = 'atomic'

set background=dark
" colorscheme tender
" colorscheme onedark
" colorscheme onehalfdark
" colorscheme scheakur
colorscheme PaperColor

" set background=light
" colorscheme onehalflight
" colorscheme zeroOne-Slash

" let g:airline_theme = 'onehalfdark'
" let g:airline_theme = 'onehalflight'
" let g:airline_theme = 'peaksea'
" let g:airline_theme = 'atomic'
let g:airline_theme = 'ayu_dark'

