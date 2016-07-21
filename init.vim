set shell='/bin/bash'

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
Bundle 'benekastah/neomake'
Bundle 'tpope/vim-commentary'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'tpope/vim-repeat'
Bundle 'matchit.zip'
Bundle 'fatih/vim-go'
Bundle 'junegunn/vim-easy-align'
Bundle 'kshenoy/vim-signature'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'
Bundle 'jeetsukumaran/vim-filebeagle'
Bundle 'junegunn/rainbow_parentheses.vim'
Bundle 'junegunn/vim-peekaboo'
Bundle 'marijnh/tern_for_vim'
Bundle 'Valloric/YouCompleteMe'

" Colorschemes
Bundle 'altercation/vim-colors-solarized'
Bundle 'goatslacker/mango.vim'
Bundle 'rakr/vim-two-firewatch'

" Syntax plugins
Bundle 'hail2u/vim-css3-syntax'
Bundle 'othree/html5-syntax.vim'
Bundle 'tpope/vim-markdown'
Bundle 'othree/yajs.vim'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'jiangmiao/simple-javascript-indenter'
Bundle 'jQuery'
Bundle 'groenewege/vim-less'
Bundle 'jnwhiteh/vim-golang'
Bundle 'evanmiller/nginx-vim-syntax'
Bundle 'mxw/vim-jsx'

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

" Show tabs
set list
set listchars=tab:▸\ 

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
map <Leader>o :CtrlPMixed<CR>

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
let g:ctrlp_working_path_mode = 'ra'

" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
let g:ctrlp_user_command='ag %s -l -i --nocolor -g ""'
let g:ctrlp_use_caching = 0
let g:ctrlp_cmd = 'CtrlPLastMode'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']

" Check syntax on save
autocmd BufWritePost * Neomake

" let g:neomake_javascript_enabled_makers = ['eslint']

autocmd BufRead * RainbowParentheses

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
