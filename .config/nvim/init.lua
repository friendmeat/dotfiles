require("config.lazy")

-- require("config.lazy").setup({
--   {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"}
-- })
require("toggleterm").setup()


-- Automatic efm-langserver configs from createivenull/efmls-configs-nvim
local languages = require('efmls-configs.defaults').languages()
local efmls_config = {
	filetypes = vim.tbl_keys(languages),
	settings = {
		rootMarkers = { '.git/' },
		languages = languages,
	},
	init_options = {
		documentFormatting = true,
		documentRangeFormatting = true,
	},
}

require('lspconfig').efm.setup(efmls_config)

-- Rebind window navigation commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- vim.keymap.set('n', '<C-S-i>', ':CocCommand editor.action.formatDocument')

--- Options
vim.o.tabstop = 4
vim.lsp.enable('pyright')
-- vim.lsp.config('pyright')


