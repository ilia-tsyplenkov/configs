let $VIMRUNTIME="/usr/local/share/vim/vim81"
filetype on
syntax on
set backspace=2
set nocompatible
set number
set background=dark
colors pablo
set cursorline
set hlsearch
set incsearch
"Transfer lines by words
set linebreak
set dy=lastline
"Tab size = 4 spaces
set softtabstop=4
set expandtab
"Tab size for new line
set shiftwidth=4
set showcmd
set laststatus=2
set statusline=%f%m%r%h%w\ %y\ enc:%{&enc}\ ff:%{&ff}\ fenc:%{&fenc}%=(ch:%3b\ hex:%2B)\ col:%2c\ line:%2l/%L\ [%2p%%]
"Disable backups and swap
set nobackup
set nowritebackup
set noswapfile
"Brackets autocomplete
" imap [ []<LEFT>
" imap ( ()<LEFT>
" imap { {}<LEFT>
"Auto changing current working directory
set autochdir
"Add headers for python files:
"1. path to python interpreter
"2. coding utf-8
function! BufNewFile_PY()
    0put = '#!/usr/bin/python'
    1put = '# -*- coding: utf-8 -*-'
    2put = '\"\"\"TODO: add module docs.\"\"\"'
    normal G
endfunction

call plug#begin()
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Valloric/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'fatih/vim-go'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
call plug#end()

autocmd BufNewFile *.py call BufNewFile_PY()
autocmd BufNewFile *.pyw call BufNewFile_PY()
"autocmd vimenter * NERDTree
autocmd CompleteDone * pclose
let g:NERDTreeWinPos = "left"
"let NERDTreeAutoDeleteBuffer = 1

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
" nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
" nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
" execute "set <M-j>=\ej"
" nnoremap <silent><M-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
" execute "set <M-k>=\ek"
" nnoremap <silent><M-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set previewheight=25
let g:ag_working_path_mode="r"
"let g:syntastic_python_flake8_exe = 'python3.5 -m flake8'
"let g:syntastic_python_python_exec = 'python3.5'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_c_checkers = ['gcc']

let g:ycm_show_diagnostics_ui = 0
"let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"mappings
map <F8> :w <CR> :!gcc % -lm -o %< && ./%< <CR>
map <C-n> :NERDTreeToggle<CR>
