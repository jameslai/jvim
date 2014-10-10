if $SHELL =~ 'fish'
  set shell='/bin/sh'
endif

" Need to call on initially to support git
set nocompatible
filetype off

" Vundle initialization
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Bundles
Bundle 'Raimondi/delimitMate'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-commentary'
Bundle 'kien/ctrlp.vim'
Bundle 'airblade/vim-rooter'
Bundle 'tpope/vim-repeat'
Bundle 'yaifa.vim'
Bundle 'matchit.zip'
Bundle 'rking/ag.vim'
Bundle 'leafgarland/typescript-vim'
Bundle 'fatih/vim-go'

" Colorschemes
Bundle 'altercation/vim-colors-solarized'

" Syntax plugins
Bundle 'hail2u/vim-css3-syntax'
Bundle 'othree/html5-syntax.vim'
Bundle 'tpope/vim-markdown'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'jiangmiao/simple-javascript-indenter'
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

" Automatically reload on file changes
set autoread

" Enable syntax
syntax enable

" Automatically detect filetypes
filetype plugin indent on

" Set our mapleader key
let mapleader = "\<Space>"

" Save with an easy shortcut
nnoremap <Leader>w :w<CR>

" Quit with an easy shortcut
nnoremap <Leader>q :q<CR>

" Copy & paste to the system clipboard with <leader>y||p
vmap <leader>y "+y
vmap <leader>p "+p

" Tab rules
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Line number rules
set number

if exists('+relativenumber')
  set rnu
else
  set nu
endif

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

" Fasting escaping out of insert mode
set ttimeout
set ttimeoutlen=100
set timeoutlen=3000

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

set formatoptions=qrn1

" Handy key remaps
map <c-f> <c-f>zz
map <c-b> <c-b>zz
map n nzz
map N Nzz

" Switching between tabs using Shift+Tab
nnoremap <Leader>] :tabn<CR>
nnoremap <Leader>[ :tabp<CR>
nnoremap <Leader>1 1gt<CR>
nnoremap <Leader>2 2gt<CR>
nnoremap <Leader>3 3gt<CR>
nnoremap <Leader>4 4gt<CR>
nnoremap <Leader>5 5gt<CR>
nnoremap <Leader>6 6gt<CR>
nnoremap <Leader>7 7gt<CR>
nnoremap <Leader>8 8gt<CR>
nnoremap <Leader>9 9gt<CR>
nnoremap <Leader>0 :tablast<CR>

" Jumping around errors
let g:syntastic_always_populate_loc_list = 1
noremap [ :lprev<CR>
noremap ] :lnext<CR>

" Searching using Ctrl+P
map <Leader>o :CtrlPMixed<CR>

" Quick netrw
map <Leader>t :Tex<CR>
map <Leader>e :Exp<CR>
map <Leader>v :Vex<CR>
map <Leader>s :Sex<CR>

" Netrw settings
let g:netrw_liststyle=3

" Quick refresh
map <Leader>r :so $MYVIMRC<CR>

" Search in project
map <Leader>f :Ag! 

" Add a semicolon to the end of the line
" nnoremap <Leader>; <C-o>A;
" nnoremap <Leader>; A;<esc>;

" Disable Ex mode
map Q <ESC>

" Allow slimline to use powerline fonts
let g:airline_powerline_fonts=1

" Prevent goofy backup files
set nobackup

" Prevent the creation of swp files, they're just a mess
set noswapfile

" Prevent double save
set nowritebackup

" Expand delimitmate
let delimitMate_expand_cr=1
let delimitMate_expand_space=1

" Do syntax check when the buffer is first loaded
let g:syntastic_check_on_open=1

" Don't overindent javascript
let g:SimpleJsIndenter_BriefMode=1

" Hide .DS_Store and .git directories from Vim
let g:netrw_list_hide='.DS_Store,^\.git/$'

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command='ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching=0
endif

autocmd QuickFixCmdPost *grep* cwindow

" Syntastic shouldn't bother with HTML files
let g:syntastic_ignore_files=['.html$']

" Automatically format saved go files
" autocmd FileType go autocmd BufWritePre <buffer> Fmt"

" Automatically open the error list when errors are detected
let g:syntastic_auto_loc_list=1

" Show the quickfix window on TypeScript errors
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
