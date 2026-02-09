return {

	{
		"danymat/neogen",
		event = { "InsertEnter", "BufReadPost", "BufNewFile" },
		config = true,
		version = "*",
	},

	{
		"chrisgrieser/nvim-scissors",
		event = { "InsertEnter", "BufReadPost", "BufNewFile" },
		opts = { snippetDir = vim.fn.stdpath("config") .. "/snippets" },
	},

	{
		"HiPhish/rainbow-delimiters.nvim",
		event = { "InsertEnter", "BufReadPost", "BufNewFile" },
	},

	{
		"folke/which-key.nvim",
		event = { "InsertEnter", "BufReadPost", "BufNewFile" },
		opts = { triggers = { { "none", mode = { "n" } } }, },
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	}

}
