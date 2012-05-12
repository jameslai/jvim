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
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let mapleader = ','

set tabstop=2
set shiftwidth=2
set softtabstop=2
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

autocmd VimEnter * NERDTree

inoremap (	()<Left>
inoremap {	{}<Left>
inoremap ()	()
inoremap {} {}
inoremap ({ ({});<Left><Left><Left>
map <C-w> :BD<return>
nmap <F4> :w<CR>:make<CR>:cw<CR>

autocmd FileType php noremap <C-L> :!php -l %<CR>
