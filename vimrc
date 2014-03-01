" Need to call on initially to support git
filetype on
filetype off
set nocompatible

" Vundle initialization
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle.vim'

" Bundles
Bundle 'vim-scripts/Align'
Bundle 'Raimondi/delimitMate'
Bundle 'bling/vim-airline'
Bundle 'airblade/vim-rooter'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-commentary'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-repeat'
Bundle 'yaifa.vim'
Bundle 'matchit.zip'
Bundle 'amirh/HTML-AutoCloseTag'
Bundle 'altercation/vim-colors-solarized'
Bundle 'rking/ag.vim'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'majutsushi/tagbar'
Bundle 'leafgarland/typescript-vim'
Bundle 'gregsexton/MatchTag'

" Syntax plugins
Bundle 'hail2u/vim-css3-syntax'
Bundle 'othree/html5-syntax.vim'
Bundle 'tpope/vim-markdown'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'jiangmiao/simple-javascript-indenter'
Bundle 'tpope/vim-haml'
Bundle 'puppetlabs/puppet-syntax-vim'
Bundle 'jQuery'
Bundle 'groenewege/vim-less'
Bundle 'jnwhiteh/vim-golang'
Bundle 'evanmiller/nginx-vim-syntax'

" Ensure vim uses bash
set shell=/bin/bash

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

" Hide the toolbar
set guioptions-=T

" Automatically reload on file changes
set autoread

" Hide scrollbars
set guioptions-=r
set go-=L

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

" Set the default encoding to the always trusty UTF-8
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

" Don't wrap
set nowrap

set textwidth=70
set formatoptions=qrn1

" Handy key remaps
map <c-f> <c-f>zz
map <c-b> <c-b>zz
map n nzz
map N Nzz
" Switching between buffers using Ctrl+Tab
nnoremap <c-Tab> :bnext<CR>
nnoremap <c-S-Tab> :bprevious<CR>

" Switching between tabs using Shift+Tab
nnoremap <Tab> :tabn<CR>
nnoremap <S-Tab> :tabp<CR>

" Searching using Ctrl+P
map <Leader>o :CtrlPMixed<CR>

" Disable Ex mode
map Q <ESC>

" Allow slimline to use powerline fonts
let g:airline_powerline_fonts = 1

" Prevent goofy backup files
set nobackup

" Prevent the creation of swp files, they're just a mess
set noswapfile

" Do syntax check when the buffer is first loaded
let g:syntastic_check_on_open=1

" Don't overindent javascript
let g:SimpleJsIndenter_BriefMode=1

" Hide .DS_Store and .git directories from Vim
let g:netrw_list_hide='.DS_Store,^\.git/$'

" Start neocompletecache automatically
let g:neocomplcache_enable_at_startup = 1

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

autocmd QuickFixCmdPost *grep* cwindow

" Syntastic shouldn't bother with HTML files
let g:syntastic_ignore_files=['.html$']

" Automatically format saved go files
autocmd FileType go autocmd BufWritePre <buffer> Fmt"

" Automatically open the error list when errors are detected
let g:syntastic_auto_loc_list=1

" Show the quickfix window on TypeScript errors
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
