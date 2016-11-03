" --- vim-colorscheme -=* zeroOne-Light *=- ----- --- --  -
" Created 2016 by wolfger@spearwolf.de
" --------------------------------------- --- --  -

hi clear
set background=light

if exists('syntax on')
    syntax reset
endif

let g:colors_name = 'zeroOne-Light'

" =====================-==---=--------------- --   -  -

let s:blue              = { "gui": "#20BBFC" }
let s:blue_dark         = { "gui": "#008EC4" }
let s:green_dark        = { "gui": "#10A778" }
let s:green_light       = { "gui": "#5FD7A7" }
let s:pink              = { "gui": "#fb007a" }
let s:pink_nearky_white = { "gui": "#fff0f8" }
let s:purple            = { "gui": "#523C79" }
let s:red               = { "gui": "#C30771" }

let s:bg                = { "gui": "#FFFFFF" }
let s:bg_a              = { "gui": "#F1F1F1" }
let s:bg_b              = { "gui": "#E0E0E0" }
let s:bg_c              = { "gui": "#B2B2B2" }

let s:norm              = { "gui": "#646464" }
let s:not_norm          = { "gui": "#767676" }
let s:statement         = { "gui": "#506080" }
let s:identifier        = { "gui": "#000000" }
let s:constant          = { "gui": "#F000A0" }
let s:string            = { "gui": "#B32561" }

let s:comment           = { "gui": "#42a282" }
let s:comment_bg        = { "gui": "#F0FFF7" }
let s:comment_bg_inner  = { "gui": "#E0FFE7" }

let s:cursor            = { "gui": "#443311" }
let s:cursor_bg         = { "gui": "#FF9966" }
let s:visual            = { "gui": "#c6e6ff" }
let s:search_bg         = { "gui": "#f2f252" }
let s:todo_fg           = { "gui": "#306090" }
let s:todo              = { "gui": "#90c0f0" }

let s:js_modules        = { "gui": "#DF6936" }
let s:js_modules_bg     = { "gui": "#FFF3E6" }

" =====================-==---=--------------- --   -  -

" -> https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
endfunction

" =====================-==---=--------------- --   -  -

call s:h("Normal",        {"bg": s:bg, "fg": s:norm})
call s:h("Identifier",    {"bg": s:bg, "fg": s:identifier, "gui": "bold"})
call s:h("Cursor",        {"bg": s:cursor_bg, "fg": s:cursor })

call s:h("Comment",       {"fg": s:comment, "bg": s:comment_bg, "gui": "italic"})

call s:h("Constant",      {"bg": s:pink_nearky_white, "fg": s:constant})
hi! link Character        Constant
hi! link Number           Constant
hi! link Boolean          Constant
hi! link Float            Constant
call s:h("String",        {"bg": s:bg, "fg": s:string})

hi! link Function         Identifier
call s:h("Statement",     {"fg": s:statement, "gui": "bold"})
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Operator         Statement
hi! link Keyword          Statement
hi! link Exception        Statement

hi! link PreProc          Normal
hi! link Include          PreProc
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc

hi! link Type             Normal
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type

hi! link Special          Normal
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link Debug            Special

call s:h("Underlined",    {"fg": s:norm, "gui": "underline", "cterm": "underline"})
call s:h("Ignore",        {"fg": s:bg})
call s:h("Error",         {"fg": s:bg, "bg": s:red, "cterm": "bold"})
call s:h("Todo",          {"fg": s:todo_fg, "bg": s:todo, "gui": "bold", "cterm": "bold"})
call s:h("SpecialKey",    {"fg": s:green_light})
call s:h("NonText",       {"fg": s:not_norm})
call s:h("Directory",     {"fg": s:blue_dark})
call s:h("ErrorMsg",      {"fg": s:pink})
call s:h("IncSearch",     {"bg": s:search_bg, "fg": s:norm})
call s:h("Search",        {"bg": s:search_bg, "fg": s:norm})
call s:h("MoreMsg",       {"fg": s:not_norm, "cterm": "bold", "gui": "bold"})
hi! link ModeMsg MoreMsg
call s:h("LineNr",        {"fg": s:bg_c})
call s:h("CursorLineNr",  {"fg": s:blue, "bg": s:bg_b})
call s:h("Question",      {"fg": s:red})
call s:h("StatusLine",    {"bg": s:bg_b})
call s:h("StatusLineNC",  {"bg": s:bg_b, "fg": s:not_norm})
call s:h("VertSplit",     {"fg": s:bg_b})
call s:h("Title",         {"fg": s:blue_dark})
call s:h("Visual",        {"bg": s:visual})
call s:h("VisualNOS",     {"bg": s:bg_c})
call s:h("WarningMsg",    {"fg": s:red})
call s:h("WildMenu",      {"fg": s:bg, "bg": s:norm})
call s:h("Folded",        {"fg": s:not_norm, "bg": s:bg})
call s:h("FoldColumn",    {"fg": s:bg_c})
call s:h("DiffAdd",       {"fg": s:green_dark})
call s:h("DiffDelete",    {"fg": s:red})
call s:h("DiffChange",    {"fg": s:todo})
call s:h("DiffText",      {"fg": s:blue_dark})
call s:h("SignColumn",    {"fg": s:green_light})

if has("gui_running")
  call s:h("SpellBad",    {"gui": "underline", "sp": s:red})
  call s:h("SpellCap",    {"gui": "underline", "sp": s:green_light})
  call s:h("SpellRare",   {"gui": "underline", "sp": s:pink})
  call s:h("SpellLocal",  {"gui": "underline", "sp": s:green_dark})
else
  call s:h("SpellBad",    {"cterm": "underline", "fg": s:red})
  call s:h("SpellCap",    {"cterm": "underline", "fg": s:green_light})
  call s:h("SpellRare",   {"cterm": "underline", "fg": s:pink})
  call s:h("SpellLocal",  {"cterm": "underline", "fg": s:green_dark})
endif

call s:h("Pmenu",         {"fg": s:norm, "bg": s:bg_c})
call s:h("PmenuSel",      {"fg": s:norm, "bg": s:blue})
call s:h("PmenuSbar",     {"fg": s:norm, "bg": s:bg_c})
call s:h("PmenuThumb",    {"fg": s:norm, "bg": s:bg_c})
call s:h("TabLine",       {"fg": s:norm, "bg": s:bg_b})
call s:h("TabLineSel",    {"fg": s:blue, "bg": s:bg_c, "gui": "bold", "cterm": "bold"})
call s:h("TabLineFill",   {"fg": s:norm, "bg": s:bg_b})
call s:h("CursorColumn",  {"bg": s:bg_b})
call s:h("CursorLine",    {"bg": s:bg_b})
call s:h("ColorColumn",   {"bg": s:bg_c})

call s:h("MatchParen",    {"bg": s:bg_c, "fg": s:norm})
call s:h("qfLineNr",      {"fg": s:not_norm})

call s:h("htmlH1",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH2",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH3",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH4",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH5",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH6",        {"bg": s:bg, "fg": s:norm})

hi link SignifySignAdd              LineNr
hi link SignifySignDelete           LineNr
hi link SignifySignChange           LineNr
hi link GitGutterAdd                LineNr
hi link GitGutterDelete             LineNr
hi link GitGutterChange             LineNr
hi link GitGutterChangeDelete       LineNr

hi link jsStorageClass              Statement
hi link jsFunction                  Statement
hi link jsArrowFunction             Statement
hi link jsOperator                  Normal
hi link jsHtmlElemAttrs             Normal

call s:h("jsModules",        {"fg": s:red, "gui": "bold"})
call s:h("jsModuleKeywords", {"fg": s:js_modules, "bg": s:js_modules_bg, "gui": "bold"})
call s:h("jsDocTags",        {"fg": s:comment, "bg": s:comment_bg, "gui": "bold"})
call s:h("jsDocType",        {"fg": s:comment, "bg": s:comment_bg})
call s:h("jsDocParam",       {"fg": s:comment, "bg": s:comment_bg_inner})
call s:h("jsDocTypeNoParam", {"fg": s:comment, "bg": s:comment_bg})

call s:h("NERDTreeOpenable", {"fg": s:red})
call s:h("NERDTreeClosable", {"fg": s:red})

