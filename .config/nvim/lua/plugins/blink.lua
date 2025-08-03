return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",
	opts = {
		keymap = {
			preset = "default",
			['<Tab>'] = { 'select_next', 'fallback' },
			['<Enter>'] = { 'select_and_accept', 'fallback' },
		},
		completion = { documentation = { auto_show = true }, ghost_text = { enabled = true } },
		sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer', 'omni' }
		},
	},
}
