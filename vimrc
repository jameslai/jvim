""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""
packadd! dracula

""""""""""""""""""""""""""""""""""""""""""""
" Global settings
""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax enable

" Use the dracula colorscheme
colorscheme dracula

" Display relative line numbers
set rnu
set nu

" Prevent backup files
set nobackup

" Disable swap files
set noswapfile

" Prevent double saves
set nowritebackup


"""""""""""""""""""""""""""""""""""""""""""
" Plugin configuration
"""""""""""""""""""""""""""""""""""""""""""

" Airline
"-------------------------------------------

" Use powerline characters for fancy arrows
let g:airline_powerline_fonts = 1

" coc
"-------------------------------------------

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Syntastic
"-------------------------------------------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Ctrl-P
"-------------------------------------------

" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


""""""""""""""""""""""""""""""""""""""""""""
" Theme overrides
""""""""""""""""""""""""""""""""""""""""""""

" Use the terminal's native background color
hi Normal ctermbg=NONE


""""""""""""""""""""""""""""""""""""""""""""
" Keymaps
""""""""""""""""""""""""""""""""""""""""""""

" Set leader key to <space>
let mapleader = " "

" Disable Ex mode
map Q <esc>

" Easy tab switching
nnoremap <Leader>] :tabn<cr>
nnoremap <Leader>[ :tabp<cr>

