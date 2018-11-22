" $HOME/.vimrc
" created by wolfger@spearwolf.de

runtime! rc.d/general.vim
runtime! rc.d/wildignore.vim

" ===== Vim-Plug ==========-==---=---=---- ----- --  -
call plug#begin('~/.vim/plugged')

" snippets
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

" features
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'

" Plug 'Shougo/neocomplete.vim'
" Plug 'ajh17/VimCompletesMe'
Plug 'Valloric/YouCompleteMe'
" Plug 'vim-syntastic/syntastic'
Plug 'w0rp/ale'

" if has('nvim')
  " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
  " Plug 'Shougo/deoplete.nvim'
  " Plug 'roxma/nvim-yarp'
  " Plug 'roxma/vim-hug-neovim-rpc'
" endif
" Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'godlygeek/tabular'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'
Plug 'gorkunov/smartpairs.vim'
Plug 'mattn/emmet-vim'
Plug 'sbdchd/neoformat'
Plug 'junegunn/vim-emoji'

" language features
Plug 'tpope/vim-git'
Plug 'vim-ruby/vim-ruby'
Plug 'moll/vim-node'
Plug 'pangloss/vim-javascript'
Plug 'jparise/vim-graphql'
Plug 'othree/html5.vim'
" Plug 'leshill/vim-json'
Plug 'elzr/vim-json'
Plug 'tpope/vim-markdown'
Plug 'mustache/vim-mustache-handlebars'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'digitaltoad/vim-pug'
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'luochen1990/rainbow'
Plug 'dag/vim-fish'
" Plug 'maxmellon/vim-jsx-pretty'
" Plug 'mxw/vim-jsx'

" colorschemes
Plug 'AlessandroYorba/Alduin'
Plug 'NLKNguyen/papercolor-theme'
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'
Plug 'pbrisbin/vim-colors-off'
Plug 'rakr/vim-one'
Plug 'reedes/vim-colors-pencil'
Plug 'scheakur/vim-scheakur'
Plug 'joshdick/onedark.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'trevordmiller/nova-vim'

" sorted out colorschemes:
" Plug 'carakan/new-railscasts-theme'
" Plug 'atelierbram/Base2Tone-vim'
" Plug 'fxn/vim-monochrome'
" Plug 'dracula/vim'
" Plug 'AlessandroYorba/Sierra'
" Plug 'KeitaNakamura/neodark.vim'
" Plug 'ajh17/Spacegray.vim'
" Plug 'altercation/vim-colors-solarized'
" Plug 'jacoborus/tender.vim'
" Plug 'nice/sweater'
" Plug 'nightsense/seabird'               " seagull, greygull, petrel, stormpetrel
" Plug 'romainl/Apprentice'
" Plug 'zcodes/vim-colors-basic'          " basic-dark, basic-light
" Plug 'goatslacker/mango.vim'
" Plug 'AlessandroYorba/Despacio'
" Plug 'danilo-augusto/vim-afterglow'
" Plug 'float168/vim-colors-cherryblossom'
" Plug 'wolverian/minimal'
" Plug 'zanglg/nova.vim'
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

" runtime! rc.d/neocomplete.vim
" runtime! rc.d/deoplete.vim

runtime! rc.d/nerdtree.vim
runtime! rc.d/ctrlp.vim
" runtime! rc.d/snippets.vim
runtime! rc.d/syntax.vim
runtime! rc.d/quickfix.vim
runtime! rc.d/last-cursor-position.vim
runtime! rc.d/remove-trailing-whitespaces.vim
runtime! rc.d/key-mappings.vim
runtime! rc.d/complete.vim
runtime! rc.d/jsx.vim
runtime! rc.d/nerdcommenter.vim
runtime! rc.d/neoformat.vim
runtime! rc.d/rainbow.vim
runtime! rc.d/emmet.vim
runtime! rc.d/ale.vim
" runtime! rc.d/syntastic.vim
runtime! rc.d/tsuquyomi.vim
runtime! rc.d/ycm.vim
" runtime! rc.d/indent-guides.vim
runtime! rc.d/airline.vim

if has("gui_running")
    runtime! rc.d/gui.vim
    if has("gui_gtk2")
        runtime! rc.d/gui-linux.vim
    endif
    if has("gui_gtk3")
        runtime! rc.d/gui-linux.vim
    endif
    if has("gui_macvim")
        runtime! rc.d/gui-macvim.vim
    endif
else
    runtime! rc.d/console.vim
endif
