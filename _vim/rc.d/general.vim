
scriptencoding utf-8
set encoding=utf-8
set termencoding=utf-8

set foldmethod=marker

set hlsearch
set incsearch
set smartcase

" Turn backup off
set nobackup
set nowritebackup
set noswapfile

" Tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

" Always splits to the right and below
set splitright
set splitbelow

" Minimal number of screen lines to keep above and below the cursor
set scrolloff=3
set sidescrolloff=5

" Text display settings
set formatoptions-=tcr
set textwidth=0  "120
set linebreak
set nowrap
set whichwrap+=h,l,<,>,[,]

"set nolist
set list

" Better redrawing for large files
set ttyfast

" Fillchars
set fillchars+=vert:◦
"║│░•◆▲▫︎◦
set list listchars=tab:»·,trail:·

" Turn on the mouse, since it doesn't play well with tmux anyway. This way I can
" scroll in the terminal
set mouse=a

" Sets how many lines of history vim has to remember
set history=10000

" Set to auto read when a file is changed from the outside
set autoread

" No need to show mode
set noshowmode

" Show incomplete commands
set showcmd

" Allow changing buffer without saving it first
set hidden

" Set backspace config
set backspace=eol,start,indent

" Make regex a little easier to type
set magic

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Always show the statusline
set laststatus=2

let mapleader = "´"

" Stop Vim dying if there's massively long lines.
set synmaxcol=500

