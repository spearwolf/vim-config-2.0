" $HOME/.vimrc
" created by wolfger@spearwolf.de

runtime! rc.d/general.vim
runtime! rc.d/wildignore.vim
runtime! rc.d/neocomplete.vim
runtime! rc.d/nerdtree.vim
runtime! rc.d/ctrlp.vim
runtime! rc.d/snippets.vim

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
Plug 'moll/vim-node'

" languages
Plug 'sheerun/vim-polyglot'

" colorschemes
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'fmoralesc/molokayo'

call plug#end()
" - -- ----------------------------------- ----- --  -

runtime! rc.d/syntax.vim
runtime! rc.d/quickfix.vim
runtime! rc.d/last-cursor-position.vim
runtime! rc.d/remove-trailing-whitespaces.vim
runtime! rc.d/key-mappings.vim

if has("gui_running")

    "runtime! rc.d/gui.vim

    "if has("gui_gtk2")
    "endif

    if has("gui_macvim")
        runtime! rc.d/gui-macvim.vim
    endif

else

    runtime! rc.d/console.vim

endif

