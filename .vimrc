filetype off
set nocompatible
set modelines=0
set spell spelllang=en_us
colorscheme solarized
set background=dark
set guifont=Monaco:h13
call pathogen#infect()
syntax enable
filetype on
filetype plugin indent on
let mapleader = ','

" Tab rules
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Line number rules
set number
set rnu

set encoding=utf-8

" Always scroll to what we're searching for
set scrolloff=3

" Automatically attempt to handle indentation
set autoindent

" Automatically attempt to set the working directory to the current
" file. This value will be superceeded by rooter if it is installed
set autochdir

" Display the current mode at the bottom of the window
set showmode

" Extra information about the command you're running in the status bar
set showcmd
set hidden

" Auto complete filenames when in :Ex mode, etc
set wildmenu
set wildmode=list:longest

set visualbell
set cursorline
set ttyfast

" Display the row and column of the cursor in the status line
set ruler
set backspace=indent,eol,start

" Always show the status line
set laststatus=2

" Highlight search results
set hlsearch

" Initially ignore cases in searches
set ignorecase

" Smart case searching. Case insensitive if all lowercase, but if you
" provide uppercase it will force matching case
set smartcase

" Support incremental searches (searching while you type)
set incsearch

" Visually display matching braces
set showmatch

set wrap
set textwidth=70
set formatoptions=qrn1

" Handy key remaps
map <c-f> <c-f>zz
map <c-b> <c-b>zz
map n nzz
map N Nzz
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
map <Leader>o :CtrlPMixed<CR>

" Prevent goofy backup files
set nobackup

" Prevent the creation of swp files, they're just a mess
set noswapfile

" Do syntax check when the buffer is first loaded
let g:syntastic_check_on_open=1

" Setup tagbar
let g:tagbar_ctags_bin='/usr/local/bin/ctags'  " Proper Ctags locations
let g:tagbar_width=26                          " Default is 40, seems too wide
noremap <silent> <Leader>y :TagbarToggle 
