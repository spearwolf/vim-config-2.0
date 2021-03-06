" #-- vim-colorscheme -=* zeroOne-Dark *=- ----- --- --  -
" Created 2016-18 by wolfger@spearwolf.de
" O==#=====-===---=---------------------------- --- --  -

" TODO publish this colortheme ;-)

hi clear
set background=dark

if exists('syntax on')
    syntax reset
endif

let g:colors_name = 'zeroOne-Dark'

" =====================-==---=--------------- --   -  - >

let s:black             = { "gui": "#000000" }
let s:blue              = { "gui": "#20BBFC" }
let s:blue_dark         = { "gui": "#008EC4" }
let s:green_dark        = { "gui": "#10A778" }
let s:green_light       = { "gui": "#5FD7A7" }
let s:pink              = { "gui": "#fb007a" }
let s:red               = { "gui": "#C30771" }

let s:yellow_fg         = { "gui": "#aaaa00" }
let s:yellow_bg         = { "gui": "#202020" }

let s:bg                = { "gui": "#202020" }
let s:bg_a              = { "gui": "#303030" }
let s:bg_b              = { "gui": "#404040" }
let s:bg_c              = { "gui": "#505050" }

let s:norm              = { "gui": "#C6C6C6" }
let s:not_norm          = { "gui": "#B0B2B6" }
let s:statement         = { "gui": "#607090" }
let s:identifier        = { "gui": "#ecece8" }
let s:constant          = { "gui": "#ffaa33" }

let s:string            = { "gui": "#C33571" }
let s:js_templ_bg       = { "gui": "#000000" }
let s:js_templ_str      = { "gui": "#A0A0A0" }
let s:js_templ_braces   = { "gui": "#D00A40" }
let s:js_templ_expr     = { "gui": "#EC610A" }

let s:comment           = { "gui": "#42a282" }
let s:comment_bg        = { "gui": "#203028" }
let s:comment_bg_inner  = { "gui": "#103030" }

let s:search_fg         = { "gui": "#553311" }
let s:search_bg         = { "gui": "#ffffa0" }

let s:js_modules        = { "gui": "#DF6936" }
let s:js_modules_bg     = { "gui": "#3F2900" }

let s:cursor_fg         = { "gui": "#000000" }
let s:cursor_bg         = { "gui": "#f0f0f0" }

let s:visual_bg         = { "gui": "#2266aa" }
let s:visual_fg         = { "gui": "#e0f0ff" }

let s:todo              = { "gui": "#ffffff" }

" =====================-==---=--------------- --   -  -

" -> copied from https://github.com/noahfrederick/vim-hemisu/
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
call s:h("Cursor",        {"bg": s:cursor_bg, "fg": s:cursor_fg })

call s:h("Comment",       {"fg": s:comment, "bg": s:comment_bg, "gui": "italic"})

call s:h("Constant",      {"fg": s:constant})
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
call s:h("Todo",          {"fg": s:red, "bg": s:todo, "gui": "bold", "cterm": "bold"})
call s:h("SpecialKey",    {"fg": s:green_light})
call s:h("NonText",       {"fg": s:not_norm})
call s:h("Directory",     {"fg": s:blue_dark})
call s:h("ErrorMsg",      {"fg": s:pink})
call s:h("IncSearch",     {"bg": s:search_bg, "fg": s:search_fg})
call s:h("Search",        {"bg": s:search_bg, "fg": s:search_fg})
call s:h("MoreMsg",       {"fg": s:not_norm, "cterm": "bold", "gui": "bold"})
hi! link ModeMsg MoreMsg
call s:h("LineNr",        {"fg": s:bg_c})
call s:h("CursorLineNr",  {"fg": s:blue, "bg": s:bg_b})
call s:h("Question",      {"fg": s:red})
call s:h("StatusLine",    {"bg": s:bg_b})
call s:h("StatusLineNC",  {"bg": s:bg_b, "fg": s:not_norm})
call s:h("VertSplit",     {"bg": s:bg, "fg": s:bg_b})
call s:h("Title",         {"fg": s:blue_dark})
call s:h("Visual",        {"bg": s:visual_bg, "fg": s:visual_fg})
call s:h("VisualNOS",     {"bg": s:bg_c})
call s:h("WarningMsg",    {"fg": s:red})
call s:h("WildMenu",      {"fg": s:bg, "bg": s:norm})
call s:h("Folded",        {"fg": s:not_norm, "bg": s:bg_a})
call s:h("FoldColumn",    {"fg": s:bg_c})
call s:h("DiffAdd",       {"fg": s:green_dark})
call s:h("DiffDelete",    {"fg": s:red})
call s:h("DiffChange",    {"fg": s:todo})
call s:h("DiffText",      {"fg": s:blue_dark})
call s:h("SignColumn",    {"fg": s:green_light, "bg": {"gui": "#242424"}})
call s:h("ALEErrorSign",  {"fg": {"gui": "#ff0000"}, "bg": {"gui": "#552424"}})
call s:h("ALEWarningSign",{"fg": {"gui": "#ffff00"}, "bg": {"gui": "#555524"}})

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
call s:h("CursorLine",    {"bg": s:black})
call s:h("ColorColumn",   {"bg": s:bg_c})

call s:h("MatchParen",    {"bg": s:bg_c, "fg": s:norm})
call s:h("qfLineNr",      {"fg": s:not_norm})

hi link vimLineComment Comment

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

" ==== js / json ======= ---------------
" hi link jsArrowFunction             Statement
hi link jsFunction                  Statement
hi link jsHtmlElemAttrs             Normal
hi link jsOperator                  Normal
hi link jsStorageClass              Statement
call s:h("jsBooleanFalse",          {"fg": { "gui": "#DF6936" }})
call s:h("jsBooleanTrue",           {"fg": { "gui": "#DF6936" }})
call s:h("jsBracket",               {"fg": { "gui": "#a4a4a4" }})
call s:h("jsClassKeywords",         {"bg": s:black, "fg": s:statement, "gui": "bold"})
call s:h("jsDocParam",              {"fg": s:comment, "bg": s:comment_bg_inner})
call s:h("jsDocTags",               {"fg": s:comment, "bg": s:comment_bg, "gui": "bold"})
call s:h("jsDocType",               {"fg": s:comment, "bg": s:comment_bg})
call s:h("jsDocTypeNoParam",        {"fg": s:comment, "bg": s:comment_bg})
call s:h("jsFuncArgs",              {"fg": { "gui": "#ffffff" }})
call s:h("jsFuncParens",            {"fg": { "gui": "#ff0066" }, "bg": { "gui": "#332229" }})
call s:h("jsArrowFunction",         {"fg": s:statement, "bg": { "gui": "#28283A" },  "gui": "bold"})
call s:h("jsFunctionKey",           {"fg": { "gui": "#e6e6e6" }, "bg": { "gui": "#303030" }, "gui": "bold"})
call s:h("jsGlobalNodeObjects",     {"fg": { "gui": "#ffaa33" }, "bg": { "gui": "#242420" }, "gui": "bold" })
call s:h("jsImport",                {"fg": s:yellow_fg, "bg": s:yellow_bg, "gui": "bold" })
call s:h("jsFrom",                  {"fg": s:yellow_fg, "bg": s:yellow_bg, "gui": "bold" })
call s:h("jsModuleAs",              {"fg": s:yellow_fg, "bg": s:yellow_bg, "gui": "bold" })
call s:h("jsExport",                {"fg": s:yellow_fg, "bg": s:yellow_bg, "gui": "bold" })
call s:h("jsExportDefault",         {"fg": s:yellow_fg, "bg": s:yellow_bg, "gui": "bold" })
call s:h("jsImportContainer",       {"fg": { "gui": "#eeeeee" }, "bg": { "gui": "#333333" }, "gui": "bold" })
call s:h("jsModuleKeywords",        {"fg": s:js_modules, "bg": s:js_modules_bg, "gui": "bold"})
call s:h("jsModuleOperators",       {"fg": s:js_modules, "bg": s:js_modules_bg, "gui": "bold"})
call s:h("jsModules",               {"fg": s:red, "gui": "bold"})
call s:h("jsNumber",                {"fg": { "gui": "#DF6936" }})
call s:h("jsObjectKey",             {"fg": { "gui": "#a4a4a4" }})
call s:h("jsObjectKeyComputed",     {"fg": { "gui": "#a4a4a4" }})
call s:h("jsSuper",                 {"bg": s:black, "fg": s:statement, "gui": "bold"})
call s:h("jsTemplateString",        {"fg": s:js_templ_str, "bg": s:js_templ_bg })
call s:h("jsTemplateBraces",        {"fg": s:js_templ_braces, "bg": s:js_templ_bg })
call s:h("jsTemplateExpression",    {"fg": s:js_templ_expr, "bg": s:js_templ_bg })

hi link jsonString                  Normal

" ==== xml / html ======= --------------- >
call s:h("xmlString",               {"bg": s:black, "fg": { "gui": "#ffaa33" }})
hi link xmlTagName                  Identifier
hi link xmlEndTag                   Identifier
hi link xmlAttribPunct              Normal

hi link htmlTagName                 Statement
hi link htmlTag                     Statement
call s:h("htmlTagN",                {"fg": { "gui": "#304060" }, "bg": s:black, "gui": "bold"})
hi link htmlEndTag                  Statement
hi link htmlArg                     Statement
hi link htmlString                  String

" ==== less / sass / css ======= --------------- >
hi link lessClass                   Statement
hi link cssTagName                  Statement
hi link sassDefinition              Statement
hi link lessCharClass               Statement
hi link lessDefinition              Statement

call s:h("lessInclude",         {"fg": s:js_modules, "bg": s:js_modules_bg, "gui": "bold"})
call s:h("cssStringQ",          {"bg": s:js_modules_bg, "fg": { "gui": "#cc2166" }})
call s:h("lessAmpersand",       {"fg": { "gui": "#304060" }, "bg": s:black, "gui": "bold"})

hi link sassMixing              lessInclude
hi link sassMixinName           jsImport
hi link sassAmpersand           lessInclude
hi link sassInclude             Statement
hi link sassVariable            jsFrom

call s:h("cssCommonAttr",       {"bg": s:black, "fg": { "gui": "#fffff0" }})
call s:h("cssTextAttr",         {"bg": s:black, "fg": { "gui": "#fffff0" }})
call s:h("cssPositioningAttr",  {"bg": s:black, "fg": { "gui": "#ffaa33" }})

call s:h("cssValueLength",      {"bg": s:black, "fg": { "gui": "#ffaa33" }})
call s:h("cssValueNumber",      {"bg": s:black, "fg": { "gui": "#ffaa33" }})
call s:h("cssUnitDecorators",   {"bg": s:black, "fg": { "gui": "#a00060" }})
call s:h("cssColor",            {"bg": s:black, "fg": { "gui": "#f000a0" }})
call s:h("cssAttr",             {"bg": s:black, "fg": s:norm })
hi link cssUIAttr               cssAttr
hi link lessCssAttribute        cssAttr

" ==== NERDTree ======= --------------- >
call s:h("NERDTreeOpenable", {"fg": s:red})
call s:h("NERDTreeClosable", {"fg": s:red})
call s:h("NERDTreeCWD",      {"fg": { "gui": "#304060" }, "bg": s:black, "gui": "bold"})
hi link NERDTreeDir          Statement

