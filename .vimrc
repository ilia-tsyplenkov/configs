filetype on
syntax on
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
"Usage system clipboard
set clipboard=unnamed
"Fix backspace
set backspace=indent,eol,start
"Brackets autocomplete
imap [ []<LEFT>
imap ( ()<LEFT>
imap { {}<LEFT>
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
Plug 'https://github.com/vim-syntastic/syntastic'
Plug 'https://github.com/Valloric/YouCompleteMe'
Plug 'fatih/vim-go'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
"Plug 'https://github.com/jistr/vim-nerdtree-tabs.git'
call plug#end()

"Setting for ctrip.vim plugin
set runtimepath^=~/.vim/plugged/ctrlp.vim
let g:ctrlp_extensions = ['buffertag']
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <c-b> :CtrlPBufTag<cr>

autocmd BufNewFile *.py call BufNewFile_PY()
autocmd BufNewFile *.pyw call BufNewFile_PY()
autocmd vimenter * NERDTree
autocmd bufenter * NERDTreeMirror
autocmd CompleteDone * pclose
let g:NERDTreeWinPos = "left"
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeShowHidden = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_c_checkers = ['gcc']
let g:ycm_show_diagnostics_ui = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" vim-go
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
