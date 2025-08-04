return {
	"saghen/blink.cmp",
	dependencies = {
		{ "rafamadriz/friendly-snippets" },
		{
			"folke/lazydev.nvim",
			ft = 'lua',
			library = {
				{ path = '${3rd}/luv/library', words = { 'vim%.uv' } },
			},
		},
	},
	version = "1.*",
	opts = {
		keymap = {
			preset = "default",
			['<Tab>'] = { 'select_next', 'fallback' },
			['<Enter>'] = { 'select_and_accept', 'fallback' },
		},
		completion = {
			documentation = {
				auto_show = true
			},
			ghost_text = { enabled = true }
		},
		sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer', 'omni' },
			providers = {
				lazydev = {
					module = 'lazydev.integrations.blink',
					score_offset = 100
				}
			},
		},
	},
}
