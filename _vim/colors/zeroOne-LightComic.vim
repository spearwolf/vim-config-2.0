hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='zeroOne-LightComic'

let s:black           = { "gui": "#212121", "cterm": "0"   }
let s:medium_gray     = { "gui": "#767676", "cterm": "243" }
let s:white           = { "gui": "#F1F1F1", "cterm": "15"  }
let s:actual_white    = { "gui": "#FFFFFF", "cterm": "231" }
let s:actual_black    = { "gui": "#000000", "cterm": "0"   }
let s:light_black     = { "gui": "#424242", "cterm": "8"   }
let s:lighter_black   = { "gui": "#545454", "cterm": "240" }
let s:subtle_black    = { "gui": "#303030", "cterm": "236" }
let s:light_gray      = { "gui": "#B2B2B2", "cterm": "249" }
let s:lighter_gray    = { "gui": "#C6C6C6", "cterm": "251" }
let s:nearly_white    = { "gui": "#E0E0E0", "cterm": "253" }
let s:pink            = { "gui": "#fb007a", "cterm": "9"   }
let s:pink_bg         = { "gui": "#fff0f8", "cterm": "15"   }
let s:dark_red        = { "gui": "#C30771", "cterm": "1"   }
let s:gray_red        = { "gui": "#C35571", "cterm": "1"   }
let s:light_red       = { "gui": "#E32791", "cterm": "1"   }
let s:orange          = { "gui": "#D75F5F", "cterm": "167" }
let s:orange_s        = { "gui": "#F08020", "cterm": "167" }
let s:darker_blue     = { "gui": "#005F87", "cterm": "18"  }
let s:dark_blue       = { "gui": "#008EC4", "cterm": "4"   }
let s:gray_blue       = { "gui": "#507099", "cterm": "4"   }
let s:blue            = { "gui": "#20BBFC", "cterm": "12"  }
let s:light_blue      = { "gui": "#c6e6ff", "cterm": "153" }
let s:dark_cyan       = { "gui": "#20A5BA", "cterm": "6"   }
let s:light_cyan      = { "gui": "#4FB8CC", "cterm": "14"  }
let s:dark_green      = { "gui": "#10A778", "cterm": "2"   }
let s:light_green     = { "gui": "#5FD7A7", "cterm": "10"  }
let s:dark_purple     = { "gui": "#523C79", "cterm": "5"   }
let s:light_purple    = { "gui": "#6855DE", "cterm": "13"  }
let s:lila            = { "gui": "#F000A0", "cterm": "5"   }
let s:yellow          = { "gui": "#F3E430", "cterm": "11"  }
let s:yellow_cursor   = { "gui": "#FFFF00", "cterm": "11"  }
let s:yellow_c        = { "gui": "#a2a232", "cterm": "11"  }
let s:yellow_cl       = { "gui": "#b2b272", "cterm": "11"  }
let s:yellow_white    = { "gui": "#FFFFF0", "cterm": "11"  }
let s:green_cl        = { "gui": "#72b272", "cterm": "10"  }
let s:green_white     = { "gui": "#F0FFF0", "cterm": "11"  }
let s:green_dark_white = { "gui": "#E0FFE0", "cterm": "11"  }
let s:yellow_black    = { "gui": "#111100", "cterm": "11"  }
let s:dark_yellow     = { "gui": "#A89C14", "cterm": "3"   }

let s:bg              = s:actual_white
let s:bg_subtle       = s:light_gray
let s:bg_very_subtle  = s:nearly_white
let s:norm            = s:light_black
let s:norm_subtle     = s:lighter_black
let s:purple          = s:dark_purple
let s:cyan            = s:dark_cyan
let s:green           = s:dark_green
let s:red             = s:dark_red
let s:visual          = s:light_blue
let s:constant        = s:lila  "s:medium_gray
"let s:comment         = s:yellow_cl
"let s:comment_bg      = s:yellow_white
let s:comment         = s:green_cl
let s:comment_bg      = s:green_white
let s:comment_bg_bg   = s:green_dark_white
let s:identifier      = s:actual_black
let s:string          = s:gray_red

let s:cursor_bg = { "gui": "#FF9966", "cterm": "0" }
let s:cursor_fg = { "gui": "#443311", "cterm": "15" }

" https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

call s:h("Normal",        {"bg": s:bg, "fg": s:norm})
call s:h("Constant",      {"bg": s:pink_bg, "fg": s:constant})
call s:h("String",        {"bg": s:bg, "fg": s:string})
call s:h("Identifier",    {"bg": s:bg, "fg": s:identifier, "gui": "bold"})
call s:h("Cursor",        {"bg": s:cursor_bg, "fg": s:cursor_fg })

call s:h("Comment",       {"fg": s:comment, "bg": s:comment_bg, "gui": "italic"})
call s:h("jsDocTags",     {"fg": s:comment, "bg": s:comment_bg, "gui": "bold"})
call s:h("jsDocType",     {"fg": s:comment, "bg": s:comment_bg})
call s:h("jsDocParam",    {"fg": s:comment, "bg": s:comment_bg_bg})
call s:h("jsDocTypeNoParam", {"fg": s:comment, "bg": s:comment_bg})

"call s:h("Constant",      {"fg": s:cyan})
"hi! link Constant         Normal
hi! link Character        Constant
hi! link Number           Constant
hi! link Boolean          Constant
hi! link Float            Constant
"hi! link String           Constant

"call s:h("Identifier",    {"fg": s:dark_blue})
"hi! link Identifier       Normal
hi! link Function         Identifier

call s:h("Statement",     {"fg": s:gray_blue, "gui": "bold"})
"hi! link Statement        Normal
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Operator         Statement
hi! link Keyword          Statement
hi! link Exception        Statement

"call s:h("PreProc",       {"fg": s:red})
hi! link PreProc          Normal
hi! link Include          PreProc
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc

"call s:h("Type",          {"fg": s:purple})
hi! link Type             Normal
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type

"call s:h("Special",       {"fg": s:pink})
hi! link Special          Normal
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link Debug            Special

call s:h("Underlined",    {"fg": s:norm, "gui": "underline", "cterm": "underline"})
call s:h("Ignore",        {"fg": s:bg})
call s:h("Error",         {"fg": s:actual_white, "bg": s:red, "cterm": "bold"})
call s:h("Todo",          {"fg": s:pink, "bg": s:yellow, "gui": "bold", "cterm": "bold"})
call s:h("SpecialKey",    {"fg": s:light_green})
call s:h("NonText",       {"fg": s:medium_gray})
call s:h("Directory",     {"fg": s:dark_blue})
call s:h("ErrorMsg",      {"fg": s:pink})
call s:h("IncSearch",     {"bg": s:yellow, "fg": s:light_black})
call s:h("Search",        {"bg": s:yellow_c, "fg": s:light_black})
call s:h("MoreMsg",       {"fg": s:medium_gray, "cterm": "bold", "gui": "bold"})
hi! link ModeMsg MoreMsg
call s:h("LineNr",        {"fg": s:bg_subtle})
call s:h("CursorLineNr",  {"fg": s:blue, "bg": s:bg_very_subtle})
call s:h("Question",      {"fg": s:red})
call s:h("StatusLine",    {"bg": s:bg_very_subtle})
call s:h("StatusLineNC",  {"bg": s:bg_very_subtle, "fg": s:medium_gray})
call s:h("VertSplit",     {"bg": s:bg_very_subtle, "fg": s:bg_very_subtle})
call s:h("Title",         {"fg": s:dark_blue})
call s:h("Visual",        {"bg": s:visual})
call s:h("VisualNOS",     {"bg": s:bg_subtle})
call s:h("WarningMsg",    {"fg": s:red})
call s:h("WildMenu",      {"fg": s:bg, "bg": s:norm})
call s:h("Folded",        {"fg": s:medium_gray})
call s:h("FoldColumn",    {"fg": s:bg_subtle})
call s:h("DiffAdd",       {"fg": s:green})
call s:h("DiffDelete",    {"fg": s:red})
call s:h("DiffChange",    {"fg": s:dark_yellow})
call s:h("DiffText",      {"fg": s:dark_blue})
call s:h("SignColumn",    {"fg": s:light_green})

if has("gui_running")
  call s:h("SpellBad",    {"gui": "underline", "sp": s:red})
  call s:h("SpellCap",    {"gui": "underline", "sp": s:light_green})
  call s:h("SpellRare",   {"gui": "underline", "sp": s:pink})
  call s:h("SpellLocal",  {"gui": "underline", "sp": s:dark_green})
else
  call s:h("SpellBad",    {"cterm": "underline", "fg": s:red})
  call s:h("SpellCap",    {"cterm": "underline", "fg": s:light_green})
  call s:h("SpellRare",   {"cterm": "underline", "fg": s:pink})
  call s:h("SpellLocal",  {"cterm": "underline", "fg": s:dark_green})
endif

call s:h("Pmenu",         {"fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuSel",      {"fg": s:norm, "bg": s:blue})
call s:h("PmenuSbar",     {"fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuThumb",    {"fg": s:norm, "bg": s:bg_subtle})
call s:h("TabLine",       {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h("TabLineSel",    {"fg": s:blue, "bg": s:bg_subtle, "gui": "bold", "cterm": "bold"})
call s:h("TabLineFill",   {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h("CursorColumn",  {"bg": s:bg_very_subtle})
call s:h("CursorLine",    {"bg": s:bg_very_subtle})
call s:h("ColorColumn",   {"bg": s:bg_subtle})

call s:h("MatchParen",    {"bg": s:bg_subtle, "fg": s:norm})
call s:h("qfLineNr",      {"fg": s:medium_gray})

call s:h("htmlH1",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH2",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH3",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH4",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH5",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH6",        {"bg": s:bg, "fg": s:norm})

" Signify, git-gutter
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
call s:h("jsModules", {"fg": s:dark_red, "gui": "bold"})

