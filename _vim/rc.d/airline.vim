" airline configuration

" let g:airline_section_b = '%{getcwd()}'
" let g:airline_section_c = '%t'

if !has("gui_gtk3")
  let g:airline_powerline_fonts = 1
endif
let g:airline#extensions#ale#enabled = 1
