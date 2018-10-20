" gui_macvim

set shell=/usr/local/bin/bash

set macligatures

let macvim_skip_cmd_opt_movement=1
" Navigate between tabs: ctrl+alt+(left|right)
" map <silent> <C-M-Left> gT
" map <silent> <C-M-Right> gt
map <silent> <M-D-Left> gT
map <silent> <M-D-Right> gt

"set guifont=Fura\ Mono\ Medium\ for\ Powerline:h14
"set guifont=Literation\ Mono\ Powerline\ Nerd\ Font\ Complete:h14
"set guifont=Roboto\ Mono:h14
"set guifont=Go\ Mono:h15
" set guifont=Latin\ Modern\ Mono\ 10\ Regular:h16
set guifont=Dank\ Mono\ Regular:h15
" set linespace=1
"set linespace=3
set linespace=4

let g:enable_bold_font = 0

" set transparency=6
set transparency=4
" set blurradius=3

set lines=32 columns=139
" set lines=42 columns=128
" set lines=32 columns=144
" set lines=36 columns=130
" set lines=30 columns=130


" #==--- dark colorschemes ------- --  -
" set background=dark
" colorscheme molokayo
" colorscheme zeroOne-Dark
" colorscheme OceanicNext
" colorscheme PaperColor
" colorscheme base16-tomorrow-night
" colorscheme spacegray
" colorscheme tender
" colorscheme Apprentice

"let g:alduin_Shout_Become_Ethereal = 1 "black background
let g:alduin_Contract_Vampirism = 1 "gray to black @ 5p
let g:alduin_Shout_Aura_Whisper = 1 "underline matching parens
let g:alduin_Shout_Fire_Breath = 1 "adds dark red color
"let g:alduin_Shout_Animal_Allegiance = 1 "removes background from Strings
"let g:alduin_Shout_Clear_Skies = 1 "removes cursorline
"colorscheme alduin

"colorscheme Apprentice
"colorscheme fruity
"colorscheme scheakur
"colorscheme nova
"colorscheme goldenrod
"colorscheme moonshine
"colorscheme flatlandia
"colorscheme sidonia

" #==--- light colorschemes ------- --  -
" set background=light
" colorscheme PaperColor
" colorscheme gruvbox
" colorscheme scheakur
" colorscheme snowcrystal
" colorscheme zeroOne-Light
" colorscheme zeroOne-LightComic
" colorscheme zeroOne-LightNew
" colorscheme zeroOne-Slash
" colorscheme zeroOne-Dune

let g:one_allow_italics = 1 " I love italic for comments
" colorscheme one  " BEST EVER light one!!
" hi SignColumn guibg=NONE

" pencil colorscheme config
let g:pencil_higher_contrast_ui = 1   " 0=low (def), 1=high
let g:pencil_neutral_headings = 1   " 0=blue (def), 1=normal
let g:pencil_neutral_code_bg = 0   " 0=gray (def), 1=normal
let g:pencil_spell_undercurl = 1       " 0=underline, 1=undercurl (def)
let g:pencil_terminal_italics = 1
" colorscheme pencil

let g:monochrome_italic_comments = 1

" #==--- dark colorschemes ------- --  -
set background=dark
" colorscheme alduin
" colorscheme gruvbox
"colorscheme Apprentice
colorscheme base16-grayscale-dark
hi SignColumn guibg=NONE
hi VertSplit guibg=NONE
hi Visual term=reverse ctermbg=11 guibg=#205060
hi Error term=reverse ctermfg=0 ctermbg=0 guibg=#440000 guifg=#ff3300

" o===)-------- -
" airline
" o===)-------- -

" let g:airline_theme='one'

" dark theme
let g:airline_theme = 'powerlineish'
" let g:airline_theme = 'minimalist'
" let g:airline_theme = 'base16_atelierlakeside'
" let g:airline_theme = 'onedark'

" light theme
" let g:airline_theme = 'kalisi'
" let g:airline_theme = 'one'
" let g:airline_theme = 'laederon'

