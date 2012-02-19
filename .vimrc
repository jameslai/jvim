filetype off
set nocompatible
set modelines=0
set spell spelllang=en_us
colorscheme molokai
set guifont=Monaco:h13
call pathogen#infect()
syntax on
filetype on
filetype plugin indent on
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let mapleader = ','

set tabstop=4
set shiftwidth=4
set softtabstop=4
set number
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set hlsearch
set ignorecase
set smartcase
set incsearch
set showmatch

set wrap
set textwidth=70
set formatoptions=qrn1
set colorcolumn=85

autocmd VimEnter * NERDTree

inoremap (	()<Left>
inoremap {	{}<Left>
inoremap ()	()
inoremap {} {}
