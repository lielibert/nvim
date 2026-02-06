return {
	"folke/which-key.nvim",
	event = { "InsertEnter", "BufReadPost", "BufNewFile" },
	opts = {
		triggers = { { "none", mode = { "n" } } },
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = true })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
