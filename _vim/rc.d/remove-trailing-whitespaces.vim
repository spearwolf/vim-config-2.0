
" Remove trailing whitespaces
func! RemoveTrailingWhitespaces()
    let save_cursor = getpos(".")
    :%s/\s*$//ge
    call setpos('.', save_cursor)
endf

