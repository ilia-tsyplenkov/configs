filetype plugin indent on
syntax on                            
set encoding=utf-8
set backspace=2
set nocompatible
set number
" set relativenumber
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
"Auto changing current working directory
set autochdir

source ~/.config/nvim/vim-plug/plugins.vim
source ~/.config/nvim/plug-config/lsp-config.vim
source ~/.config/nvim/plug-config/bindings.vim
source ~/.config/nvim/plug-config/rust.vim

luafile ~/.config/nvim/lua/plugins/compe-config.lua
luafile ~/.config/nvim/lua/lsp/python-ls.lua
luafile ~/.config/nvim/lua/lsp/golang-ls.lua
luafile ~/.config/nvim/lua/lsp/rust-ls.lua

autocmd CompleteDone * pclose
let g:NERDTreeWinPos = "left"
map <C-n> :NERDTreeToggle<CR>
let g:ag_working_path_mode="r"
