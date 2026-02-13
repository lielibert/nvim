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


}
