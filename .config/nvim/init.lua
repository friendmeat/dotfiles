-- PLUGINS --
require("config.lazy")
require("nvim-tree").setup()
require("toggleterm").setup {
	open_mapping = [[<c-\>]],
	direction = 'horizontal'
}

-- LSPs --
-- local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocl.make_client_capabilities())

vim.lsp.config("markdown_oxide", {
		-- capabilities = vim.tbl_deep_extend('force', capabilities, { workspace = { didChangeWatchedFiles = { dynamicRegistration = true, }, }, }),
		-- on_attach = on_attach
})

-- KEY BINDINGS --
-- Rebind window navigation commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })


-- OPTIONS --
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4

-- disable netrw in favor of nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- COLOR SCHEME --
vim.cmd.colorscheme('everforest')
