filetype plugin indent on
syntax on

" ------------ colorscheme ------------
colorscheme wombat256mod
hi CursorLineNr cterm=bold  " current line number
hi ColorColumn term=reverse ctermbg=236  " colorcolumn

" ------------ tab --------------------
set tabstop=4
set shiftwidth=0  " same as tabstop
set expandtab
set smartindent
set autoindent

" ------------ undo & history ---------
set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

set history=1000  " commands and searches history

if empty(glob(&undodir))
    call mkdir(&undodir, 'p')
endif

" ----------- search ------------------
set incsearch       " show what found while typing search pattern
set hlsearch        " highlight what found
set ignorecase      " when searching pattern
set nowrapscan      " do not loop search
set smartcase       " smart case when searching (a=[aA], [A]=[A])

" ----------- view --------------------
set scrolloff=3  " minimal lines above and bellow cursor
set sidescrolloff=0  " minimal columns to the left and right of cursor
set list
set listchars=tab:»·,trail:·,extends:…,precedes:…,nbsp:~
set display=uhex  " Show unprintable characters hexadecimal as <xx>
set number
set wildmenu

set ttyfast

" ----------- cursor line -------------
set cursorline
set colorcolumn=80,100,200

" ----------- other -------------------
set backspace=2
set hidden  " to switch buffers by bnext/bprevious
