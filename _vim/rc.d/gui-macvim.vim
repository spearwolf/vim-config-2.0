" gui_macvim

set macligatures

let macvim_skip_cmd_opt_movement=1

" Navigate between tabs: ctrl+alt+(left|right)
map <silent> <C-M-Left> gT
map <silent> <C-M-Right> gt

"set guifont=Fura\ Mono\ Medium\ for\ Powerline:h14
"set guifont=Literation\ Mono\ Powerline\ Nerd\ Font\ Complete:h14
"set guifont=Roboto\ Mono:h14
"set guifont=Go\ Mono:h15
set guifont=Latin\ Modern\ Mono\ 10\ Regular:h16
set linespace=1
"set linespace=3

let g:enable_bold_font = 0

"set transparency=6
set transparency=2
"set blurradius=3

"set lines=37 columns=140
"set lines=42 columns=128
"set lines=32 columns=144
"set lines=36 columns=130
set lines=30 columns=130


" #==--- dark colorschemes ------- --  -
"set background=dark
"colorscheme molokayo
"colorscheme zeroOne-Dark
"colorscheme OceanicNext
"colorscheme PaperColor
"colorscheme base16-tomorrow-night
"colorscheme spacegray
"colorscheme tender
"colorscheme Apprentice

"let g:sierra_Twilight = 1
"let g:sierra_Nevada = 1
let g:sierra_Sunset = 1
"colorscheme sierra

"let g:despacio_Sunset = 1 "medium gray background
"let g:despacio_Twilight = 1 "dark gray background
"let g:despacio_Midnight = 1 "almost black background
"let g:despacio_Pitch = 1 "black background
let g:despacio_Campfire = 1 "Changes theme depending on time of day
"colorscheme despacio

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
set background=light
"colorscheme snowcrystal
"colorscheme zeroOne-Light
"colorscheme zeroOne-LightComic
"colorscheme PaperColor

colorscheme one
hi SignColumn guibg=NONE

" pencil colorscheme config
let g:pencil_higher_contrast_ui = 1   " 0=low (def), 1=high
let g:pencil_neutral_headings = 0   " 0=blue (def), 1=normal
let g:pencil_neutral_code_bg = 1   " 0=gray (def), 1=normal
let g:pencil_spell_undercurl = 1       " 0=underline, 1=undercurl (def)
let g:pencil_terminal_italics = 1

" dark them
"let g:airline_theme = 'powerlineish'

" light theme
let g:airline_theme = 'kalisi'

