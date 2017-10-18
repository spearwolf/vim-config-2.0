" $HOME/.vimrc
" created by wolfger@spearwolf.de

runtime! rc.d/general.vim
runtime! rc.d/wildignore.vim

" ===== Vim-Plug ==========-==---=---=---- ----- --  -
call plug#begin('~/.vim/plugged')

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" features
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'ajh17/VimCompletesMe'
Plug 'Shougo/neocomplete.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'godlygeek/tabular'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'
Plug 'gorkunov/smartpairs.vim'
Plug 'mattn/emmet-vim'
Plug 'w0rp/ale'
Plug 'sbdchd/neoformat'

" language features
Plug 'tpope/vim-git'
Plug 'vim-ruby/vim-ruby'
Plug 'moll/vim-node'
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'leshill/vim-json'
Plug 'tpope/vim-markdown'
Plug 'mustache/vim-mustache-handlebars'
Plug 'mxw/vim-jsx'
Plug 'fleischie/vim-styled-components'
Plug 'leafgarland/typescript-vim'
Plug 'digitaltoad/vim-pug'
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'

" colorschemes
Plug 'ajh17/Spacegray.vim'
Plug 'AlessandroYorba/Alduin'
Plug 'AlessandroYorba/Despacio'
Plug 'AlessandroYorba/Sierra'
Plug 'altercation/vim-colors-solarized'
Plug 'carakan/new-railscasts-theme'     " dark
Plug 'chriskempson/base16-vim'
Plug 'danilo-augusto/vim-afterglow'
Plug 'goatslacker/mango.vim'
Plug 'jacoborus/tender.vim'
Plug 'morhetz/gruvbox'
Plug 'nightsense/seabird'               " seagull, greygull, petrel, stormpetrel
Plug 'NLKNguyen/papercolor-theme'
Plug 'pbrisbin/vim-colors-off'
Plug 'rakr/vim-one'
Plug 'reedes/vim-colors-pencil'
Plug 'romainl/Apprentice'
Plug 'scheakur/vim-scheakur'
Plug 'zanglg/nova.vim'
Plug 'zcodes/vim-colors-basic'          " basic-dark, basic-light
Plug 'nanotech/jellybeans.vim'
Plug 'float168/vim-colors-cherryblossom'
Plug 'KeitaNakamura/neodark.vim'
Plug 'nice/sweater'
Plug 'wolverian/minimal'

" sorted out colorschemes:
" Plug 'google/vim-colorscheme-primary'
" Plug 'colepeters/spacemacs-theme.vim'   " only for true-color terminals
" Plug 'dikiaap/minimalist'
" Plug 'fmoralesc/molokayo'
" Plug 'john2x/flatui.vim'
" Plug 'jordwalke/flatlandia'
" Plug 'KabbAmine/yowish.vim'
" Plug 'KKPMW/moonshine-vim'
" Plug 'MaxSt/FlatColor'
" Plug 'mitsuhiko/fruity-vim-colorscheme'
" Plug 'tomasiser/vim-code-dark'
" Plug 'tomasr/molokai'
" Plug 'yosiat/oceanic-next-vim'
" Plug 'GGalizzi/cake-vim'                " light
" Plug 'chr4/jellygrass.vim'
" Plug 'yuttie/hydrangea-vim'
" Plug 'lu-ren/SerialExperimentsLain'
" Plug 'liuchengxu/space-vim-dark'

call plug#end()
" - -- ----------------------------------- ----- --  -

silent! helptags ALL

runtime! rc.d/neocomplete.vim
runtime! rc.d/nerdtree.vim
runtime! rc.d/ctrlp.vim
runtime! rc.d/snippets.vim
runtime! rc.d/syntax.vim
runtime! rc.d/quickfix.vim
runtime! rc.d/last-cursor-position.vim
runtime! rc.d/remove-trailing-whitespaces.vim
runtime! rc.d/ale.vim
runtime! rc.d/key-mappings.vim
runtime! rc.d/complete.vim
runtime! rc.d/jsx.vim
runtime! rc.d/airline.vim
runtime! rc.d/nerdcommenter.vim
runtime! rc.d/neoformat.vim

if has("gui_running")
    runtime! rc.d/gui.vim
    if has("gui_gtk2")
        runtime! rc.d/gui-linux.vim
    endif
    if has("gui_macvim")
        runtime! rc.d/gui-macvim.vim
    endif
else
    runtime! rc.d/console.vim
endif
