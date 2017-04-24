" gui_gtk2

" New tab C-T
map <silent> <S-C-T> :tabnew<CR>

" Navigate between tabs: ctrl+alt+(left|right)
"map <silent> <C-A-Left> gT
"map <silent> <C-A-Right> gt

let g:enable_bold_font = 1

set guifont=Monospace\ 11
"set guifont=Go\ Mono\ 14
"set guifont=Courier\ 10\ Pitch\ 11
set linespace=0

"set lines=30 columns=105
set lines=33 columns=111

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


" #==--- light colorschemes ------- --  -
set background=light
"colorscheme snowcrystal
"colorscheme zeroOne-Light
"colorscheme zeroOne-LightComic
"colorscheme PaperColor
colorscheme one
hi SignColumn guibg=NONE

" light theme
let g:airline_theme = 'kalisi'

