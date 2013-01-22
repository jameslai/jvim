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
set scrolloff=3
set autoindent
set autochdir
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

map <c-f> <c-f>zz
map <c-b> <c-b>zz
map n nzz
map N Nzz
map j jzz
map k kzz

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

set nobackup

" Plugin specific options
" ----------------------------------------------------------------------------

" Do syntax check when the buffer is first loaded
let g:syntastic_check_on_open=1
