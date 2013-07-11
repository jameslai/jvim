filetype off
set nocompatible

" Vundle initialization
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Bundles
Bundle 'vim-scripts/Align'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-ragtag'
Bundle 'Lokaltog/vim-powerline'
Bundle 'airblade/vim-rooter'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-commentary'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-repeat'

" Syntax plugins
Bundle 'hail2u/vim-css3-syntax'
Bundle 'othree/html5-syntax.vim'
Bundle 'tpope/vim-markdown'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'tpope/vim-haml'
Bundle 'jQuery'

" Some kind of security thing
set modelines=0

" Default spelling language
set spell spelllang=en_us

" Set the colorscheme
colorscheme solarized

" Set the colorscheme to dark mode
set background=dark

" Set the default font
set guifont=Monaco:h13

" Enable syntax
syntax enable

" Automatically detect filetypes
filetype plugin indent on

" Set our mapleader key
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
