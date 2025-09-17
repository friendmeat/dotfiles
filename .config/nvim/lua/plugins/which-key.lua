return {
	"folke/which-key.nvim",
	dependencies = {
			{"nvim-tree/nvim-web-devicons", opts = {} },
			{"echasnovski/mini.icons", opts = {} }
	},
	event = "VeryLazy",
	opts = {},
	keys = {
		{
			"<leader?",
			function()
				require("whic-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
