" --- vim-colorscheme -=* snowcrystal *=- ----- --- --  -
" created 2015 by wolfger@spearwolf.de
" --------------------------------------- --- --  -

set background=light

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "snowcrystal"

hi Boolean      gui=bold    guibg=#f0f0f0  guifg=#000000
hi Character    gui=none    guibg=#efdcce  guifg=#502010
hi Comment      gui=italic  guibg=#fff2ff  guifg=#a02050
hi Constant     gui=none    guibg=#ffffff  guifg=#666666
hi Exception    gui=bold    guibg=#fff0f0  guifg=#f00020
hi Folded       gui=italic  guibg=#f0f0f0  guifg=#444444
hi Identifier   gui=none    guibg=#e0f0ff  guifg=#002060
hi Ignore       gui=none    guibg=#e0e8f0  guifg=#0000ff
hi Keyword      gui=italic                 guifg=#000000
hi LineNr       gui=none    guibg=#f0f0f0  guifg=#999999
hi NonText      gui=none    guibg=#d5e3f0  guifg=#666666
hi Normal       gui=none    guibg=#ffffff  guifg=#000000
hi Number       gui=none    guibg=#e5ffe5  guifg=#005010
hi Operator     gui=bold                   guifg=#000000
hi PreProc      gui=bold                   guifg=#000000
hi Special      gui=none    guibg=#f0f0f0  guifg=#3f0900
hi Statement    gui=bold                   guifg=#d00070
hi String       gui=none    guibg=#ffffea  guifg=#606000
hi Title        gui=none    guibg=#563d7c  guifg=#ffffff
hi Type         gui=bold                   guifg=#0080d0

hi Cursor       gui=inverse guifg=#ff9933
hi CursorLine   gui=none    guibg=#f9f9f0
hi Visual       gui=none    guibg=#204070  guifg=#ffffff
hi Question     gui=none    guibg=#ffff00  guifg=#000000

hi StatusLine   gui=none    guibg=#56a0ee  guifg=#ffffff  term=BOLD,reverse cterm=NONE ctermfg=Yellow ctermbg=DarkGray
hi StatusLineNC gui=none    guibg=#4690de  guifg=#e9e9a4
hi VertSplit    gui=bold    guibg=#f0f0f0  guifg=#c0c0c0

hi TabLine      gui=italic    guibg=#90a0b0  guifg=#a00040
hi Pmenu        gui=none      guibg=#102040  guifg=#f0f0f0
hi PmenuSel     gui=none      guibg=#f00030  guifg=#ffffe0
hi SpecialKey                                guifg=#ffffff
hi WildMenu     gui=underline guifg=#56a0ee  guibg=#e9e9f4

hi htmlTagName    gui=bold      guibg=#fafafa  guifg=#d00070
hi htmlTagN       gui=none      guibg=#fafafa  guifg=#002060
hi htmlArg        gui=none      guibg=#fafafa  guifg=#333333
hi htmlLink       gui=underline guibg=#fafafa  guifg=#606000

hi! link htmlComment     Number
hi! link htmlCommentPart htmlComment
hi! link htmlString      Normal
hi! link htmlValue       Normal

