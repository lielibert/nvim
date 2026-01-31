return {

	"folke/which-key.nvim",
	event = "InsertEnter",
	opts = {
		triggers = {
			{ "<leader>", mode = { "v" } },
		},
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
