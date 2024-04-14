call plug#begin()
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'vim-airline/vim-airline'
Plug 'preservim/tagbar'

Plug 'nvim-lua/plenary.nvim'
" need ripgrep to be installed
" sudo apt install ripgrep
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
" Plug 'nvim-telescope/telescope.nvim'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
" Plug 'kdheepak/lazygit.nvim'
Plug 'martinsione/darkplus.nvim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
" Plug 'lewis6991/gitsigns.nvim'
Plug 'ranjithshegde/ccls.nvim'
call plug#end()
