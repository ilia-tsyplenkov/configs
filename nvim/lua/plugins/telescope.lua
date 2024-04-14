-- require('telescope').setup{}
-- local opts = { noremap = true, silent = true }
--
-- -- Shorten function name
-- local keymap = vim.api.nvim_set_keymap
--
-- keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
-- -- keymap("n", "<c-t>", "<cmd>lua require'telescope.builtin'.live_grep(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
-- keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)

require('telescope').setup {
	pickers = {
		buffers = {
			-- начинать в normal моде при открытии списка буферов
			initial_mode = 'normal'
		}
	}
}
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
-- горячие клавиши
map('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opts)
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', opts)
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>', opts)
map('n', '<leader>tr', '<cmd>Telescope resume<CR>', opts)
