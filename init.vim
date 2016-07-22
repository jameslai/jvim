set shell=/bin/bash

" Need to call on initially to support git
set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

" Bundles
Plug 'Raimondi/delimitMate'
Plug 'bling/vim-airline'
Plug 'tpope/vim-surround'
Plug 'benekastah/neomake'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'matchit.zip'
Plug 'junegunn/vim-easy-align'
Plug 'kshenoy/vim-signature'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'marijnh/tern_for_vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
Plug 'gabesoft/vim-ags'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Colorschemes
Plug 'flazz/vim-colorschemes'
Plug 'rakr/vim-two-firewatch'
Plug 'vim-airline/vim-airline-themes'

" Syntax plugins
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5-syntax.vim'
Plug 'tpope/vim-markdown', { 'for': 'md' }
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'jnwhiteh/vim-golang', { 'for': 'go' }
Plug 'evanmiller/nginx-vim-syntax'
Plug 'mxw/vim-jsx'
Plug 'digitaltoad/vim-pug'

" Add plugins to &runtimepath
call plug#end()

" Some kind of security thing
set modelines=0

" Declare which JS libs we want syntax highlighting for
let g:used_javascript_libs = "underscore,backbone,react,jquery,requirejs,handlebars"

" Default spelling language
set spell spelllang=en_us

" Use true colors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Set the colorscheme
colorscheme solarized

" Airline theme
let g:airline_theme='solarized'

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

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. <Leader>aip)
nmap <Leader>a <Plug>(EasyAlign)

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
" let g:syntastic_always_populate_loc_list = 1
noremap [ :lprev<CR>
noremap ] :lnext<CR>

" Searching using Ctrl+P
map <Leader><space> :GitFiles<CR>
map <Leader>p :GitFiles<CR>
map <Leader>a :Ag<CR>

" Quick netrw
map <Leader>t :Tex<CR>
map <Leader>e :Exp<CR>
map <Leader>v :Vex<CR>
map <Leader>s :Sex<CR>

" Quick refresh
map <Leader>r :so $MYVIMRC<CR>

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
" let g:syntastic_check_on_open=1

" Don't overindent javascript
let g:SimpleJsIndenter_BriefMode=1

" Hide .DS_Store and .git directories from Vim
let g:netrw_list_hide='.DS_Store,^\.git/$'

" Set the working directory to the nearest ancestor .git directory
let g:ctrlp_working_path_mode = 'c'

" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
let g:ctrlp_user_command='ag %s -l -i --nocolor -g ""'
let g:ctrlp_use_caching = 0
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']

" Check syntax on save
autocmd BufWritePost * Neomake

" Open the error list automatically
let g:neomake_open_list = 2

command! Tex :tabnew | :FileBeagle
command! Sex :split | :FileBeagle
command! Vex :vsplit | :FileBeagle
command! Exp :FileBeagle

" Open vertical splits to the right by default
set splitbelow
set splitright

" More natural split navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h

" Statusline customization
let g:airline_section_b = ''
let g:airline_section_y = ''
let g:airline_section_z = ''

" fugitive git bindings
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>gt :Gcommit -v -q %:p<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gw :Gwrite<CR><CR>
nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <leader>gp :Ggrep<Space>
nnoremap <leader>gm :Gmove<Space>
nnoremap <leader>gb :Git branch<Space>
nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>gps :Dispatch! git push<CR>
nnoremap <leader>gpl :Dispatch! git pull<CR>
