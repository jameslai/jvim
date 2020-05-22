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


" FZF
"-------------------------------------------

" Custom ripgrep implementation letting us search file contents quickly
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
    let initial_command = printf(command_fmt, shellescape(a:query))
      let reload_command = printf(command_fmt, '{q}')
        let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
          call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
        endfunction

        command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)


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

" Search contents of files in project
nnoremap <Leader><Leader> :RG<cr>

" Search by filename of project
nnoremap <Leader>p :GFiles<cr>

" Search for word under cursor
nnoremap <expr> <Leader>* ':RG '.expand('<cword>').'<cr>'

" Easy tab switching
nnoremap <Leader>] :tabn<cr>
nnoremap <Leader>[ :tabp<cr>

