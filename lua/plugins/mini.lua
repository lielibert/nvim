return {

	{
		"nvim-mini/mini.nvim",
		version = "*",
		event = { "InsertEnter", "BufReadPost", "BufNewFile" },
		config = function()
			require("mini.align").setup()
			require("mini.comment").setup()
			require("mini.operators").setup()
			require("mini.pairs").setup()
			require("mini.splitjoin").setup()
			require("mini.surround").setup()

			require("mini.files").setup()
			require("mini.git").setup()
			require("mini.diff").setup({ view = { signs = { add = '+', change = '~', delete = '-' } } })

			require("mini.trailspace").setup()
		end,
	},
}
