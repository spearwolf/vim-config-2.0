" --- vim-colorscheme -=* dunkelmagie *=- ----- --- --  -
" created 2015 by wolfger@spearwolf.de
" --------------------------------------- --- --  -

set background=dark

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "dunkelmagie"

hi Normal                       gui=none       guibg=#304055 guifg=#dddddd
hi Statement                    gui=bold       guibg=bg      guifg=#aaaaaa
" hi Type                         gui=bold       guibg=#AAD802 guifg=#005F00
hi Type                         gui=bold       guibg=bg      guifg=#6090a0
hi Special                      gui=none       guibg=bg      guifg=#888888
hi javascriptLDot               gui=none       guibg=bg      guifg=#aaaaaa
hi Identifier                   gui=none       guibg=#203043 guifg=#fff060
hi PreProc                      gui=none       guibg=#304050 guifg=#6080d0
hi Title                        gui=bold       guibg=#17273a guifg=#ffffff
hi Comment                      gui=italic     guibg=#203044 guifg=#607093

hi Constant                     gui=bold       guibg=#203055 guifg=#d10060
" hi Number                       gui=bold       guibg=#e0e0e0 guifg=#000000
hi Number                       gui=bold       guibg=#405060 guifg=#ddddee
hi Boolean                      gui=bold       guibg=#e0e0e0 guifg=#000000
hi Float                        gui=bold       guibg=#e0e0e0 guifg=#000000

hi Todo                         gui=none       guibg=#ff0066 guifg=#fffff0

hi Search                                      guibg=#000000 guifg=#ffff66
hi Visual                       gui=none       guibg=#b0c0dd guifg=#000000
hi Folded                       gui=none       guibg=#304055 guifg=#a0b0c0

hi javascriptASscopeMethods     gui=underline  guibg=#304055 guifg=#ffffff
hi javascriptSFunction          gui=none       guibg=#203044 guifg=#ffffff

hi! link javascriptRTop javascriptSFunction
hi! link javascriptAServices javascriptSFunction

" hi Type                         gui=bold       guibg=#AAD802 guifg=#005F00
hi typescriptFuncKeyword        gui=bold       guibg=#AAD802 guifg=#005F00
hi typescriptBraces             gui=bold       guibg=#102033 guifg=#ccccdd

hi NonText                      gui=none       guibg=#203043 guifg=#607090
hi Cursor                                      guibg=#ffffff guifg=#ff0066
hi CursorLine                                  guibg=#172737
hi Visual                                      guibg=#405060
hi LineNr                       gui=none       guibg=#08182c guifg=#304063
hi SignColumn                   gui=none       guibg=#203045 guifg=#607093

hi VertSplit                    gui=none       guibg=#203044 guifg=#000022

hi Directory                    gui=none       guibg=#203044 guifg=#ffc030
hi NERDTreeCWD                  gui=none       guibg=#203044 guifg=#ffffcc
hi NERDTreeDirSlash             gui=none       guibg=#203044 guifg=#ffff90
hi NERDTreeOpenable             gui=none       guibg=#304055 guifg=#c10060
hi NERDTreeClosable             gui=none       guibg=#304055 guifg=#c01070

hi NERDTreeHelp                 gui=none       guibg=#304055 guifg=#6080d0
hi NERDTreeHelpTitle            gui=none       guibg=#203044 guifg=#f04090
hi NERDTreeHelpKey              gui=none       guibg=#304055 guifg=#70f0ff

