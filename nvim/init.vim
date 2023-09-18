filetype plugin indent on
syntax on                            

source ~/.config/nvim/vim-plug/plugins.vim
source ~/.config/nvim/plug-config/lsp-config.vim
source ~/.config/nvim/plug-config/bindings.vim
" source ~/.config/nvim/plug-config/rust.vim
" source ~/.config/nvim/plug-config/lazygit.vim

luafile ~/.config/nvim/lua/plugins/compe-config.lua
luafile ~/.config/nvim/lua/lsp/python-ls.lua
luafile ~/.config/nvim/lua/lsp/golang-ls.lua

" brew install ccls
luafile ~/.config/nvim/lua/lsp/cpp-ls.lua
luafile ~/.config/nvim/lua/plugins/telescope.lua
luafile ~/.config/nvim/lua/plugins/toggleterm.lua
luafile ~/.config/nvim/lua/colorscheme.lua
luafile ~/.config/nvim/lua/common-keybindings.lua
luafile ~/.config/nvim/lua/options.lua

autocmd CompleteDone * pclose
let g:NERDTreeWinPos = "left"
map <C-n> :NERDTreeToggle<CR>
let g:ag_working_path_mode="r"
let g:go_gopls_local = 'a.yandex-team.ru'
