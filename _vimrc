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
Plug 'scrooloose/syntastic'
Plug 'godlygeek/tabular'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'moll/vim-node'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'
Plug 'gorkunov/smartpairs.vim'

" languages
"Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-git'
Plug 'vim-ruby/vim-ruby'
Plug 'moll/vim-node'
Plug 'pangloss/vim-javascript', { 'branch': 'develop' }
Plug 'othree/html5.vim'
Plug 'leshill/vim-json'
Plug 'tpope/vim-markdown'
Plug 'mustache/vim-mustache-handlebars'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'

" colorschemes
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'fmoralesc/molokayo'
Plug 'yosiat/oceanic-next-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'MaxSt/FlatColor'
Plug 'chriskempson/base16-vim'
Plug 'goatslacker/mango.vim'
Plug 'KabbAmine/yowish.vim'
Plug 'ajh17/Spacegray.vim'
Plug 'jacoborus/tender.vim'
Plug 'google/vim-colorscheme-primary'
Plug 'rakr/vim-one'
Plug 'AlessandroYorba/Sierra'


call plug#end()
" - -- ----------------------------------- ----- --  -

runtime! rc.d/neocomplete.vim
runtime! rc.d/nerdtree.vim
runtime! rc.d/ctrlp.vim
runtime! rc.d/snippets.vim
runtime! rc.d/syntax.vim
runtime! rc.d/quickfix.vim
runtime! rc.d/last-cursor-position.vim
runtime! rc.d/remove-trailing-whitespaces.vim
runtime! rc.d/key-mappings.vim
runtime! rc.d/syntastic.vim
runtime! rc.d/complete.vim
runtime! rc.d/jsx.vim

if has("gui_running")

    runtime! rc.d/gui.vim

    "if has("gui_gtk2")
    "endif

    if has("gui_macvim")
        runtime! rc.d/gui-macvim.vim
    endif

else

    runtime! rc.d/console.vim

endif

