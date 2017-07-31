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
"Plug 'scrooloose/syntastic'
Plug 'Shougo/neocomplete.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'godlygeek/tabular'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'moll/vim-node'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'
Plug 'gorkunov/smartpairs.vim'
Plug 'mattn/emmet-vim'
Plug 'w0rp/ale'
Plug 'fleischie/vim-styled-components'
Plug 'sbdchd/neoformat'

" languages
"Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-git'
Plug 'vim-ruby/vim-ruby'
Plug 'moll/vim-node'
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'leshill/vim-json'
Plug 'tpope/vim-markdown'
Plug 'mustache/vim-mustache-handlebars'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'digitaltoad/vim-pug'
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'

" colorschemes
Plug 'acoustichero/goldenrod.vim'
Plug 'ajh17/Spacegray.vim'
Plug 'AlessandroYorba/Alduin'
Plug 'AlessandroYorba/Despacio'
Plug 'AlessandroYorba/Sierra'
Plug 'altercation/vim-colors-solarized'
Plug 'carakan/new-railscasts-theme'     " dark
Plug 'chriskempson/base16-vim'
Plug 'colepeters/spacemacs-theme.vim'   " only for true-color terminals
Plug 'danilo-augusto/vim-afterglow'
Plug 'dikiaap/minimalist'
Plug 'fmoralesc/molokayo'
Plug 'goatslacker/mango.vim'
Plug 'google/vim-colorscheme-primary'
Plug 'jacoborus/tender.vim'
Plug 'john2x/flatui.vim'
Plug 'jordwalke/flatlandia'
Plug 'KabbAmine/yowish.vim'
Plug 'KKPMW/moonshine-vim'
Plug 'MaxSt/FlatColor'
Plug 'mitsuhiko/fruity-vim-colorscheme'
Plug 'morhetz/gruvbox'
Plug 'nightsense/seabird'               " seagull, petrel
Plug 'NLKNguyen/papercolor-theme'
Plug 'pbrisbin/vim-colors-off'
Plug 'rakr/vim-one'
Plug 'reedes/vim-colors-pencil'
Plug 'romainl/Apprentice'
Plug 'scheakur/vim-scheakur'
Plug 'smurfd/winterd'
Plug 'tomasiser/vim-code-dark'
Plug 'tomasr/molokai'
Plug 'yosiat/oceanic-next-vim'
Plug 'zanglg/nova.vim'
Plug 'zcodes/vim-colors-basic'          " basic-dark, basic-light
Plug 'nanotech/jellybeans.vim'
Plug 'float168/vim-colors-cherryblossom'
Plug 'KeitaNakamura/neodark.vim'


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

