filetype plugin indent on
syntax on                            

source ~/.config/nvim/vim-plug/plugins.vim
source ~/.config/nvim/plug-config/lsp-config.vim
source ~/.config/nvim/plug-config/bindings.vim
source ~/.config/nvim/plug-config/rust.vim
" source ~/.config/nvim/plug-config/lazygit.vim
luafile ~/.config/nvim/lua/plugins/compe-config.lua
luafile ~/.config/nvim/lua/plugins/auto-pairs.lua
luafile ~/.config/nvim/lua/lsp/python-ls.lua
luafile ~/.config/nvim/lua/lsp/golang-ls.lua
luafile ~/.config/nvim/lua/lsp/rust-ls.lua
" luafile ~/.config/nvim/lua/lsp/cpp-ls.lua
luafile ~/.config/nvim/lua/plugins/telescope.lua
luafile ~/.config/nvim/lua/plugins/toggleterm.lua
luafile ~/.config/nvim/lua/colorscheme.lua
luafile ~/.config/nvim/lua/common-keybindings.lua
luafile ~/.config/nvim/lua/options.lua
luafile ~/.config/nvim/lua/autocommands.lua


autocmd CompleteDone * pclose
let g:NERDTreeWinPos = "left"
map <C-n> :NERDTreeToggle<CR>
let g:ag_working_path_mode="r"

let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }
