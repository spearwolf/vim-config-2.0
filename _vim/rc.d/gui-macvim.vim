" gui_macvim

set macligatures

let macvim_skip_cmd_opt_movement=1

" Navigate between tabs: ctrl+alt+(left|right)
map <silent> <C-M-Left> gT
map <silent> <C-M-Right> gt

"set guifont=Fira\ Mono\ Medium\ for\ Powerline:h14
set guifont=Roboto\ Mono:h14
set linespace=1

let g:enable_bold_font = 1

set transparency=6
set blurradius=3

"set lines=37 columns=140
"set lines=42 columns=128
set lines=32 columns=144
"set lines=36 columns=130


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
colorscheme sierra

" #==--- light colorschemes ------- --  -
set background=light
"colorscheme snowcrystal
"colorscheme zeroOne-Light
"colorscheme zeroOne-LightComic
"colorscheme PaperColor
colorscheme one

