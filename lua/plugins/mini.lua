return {
	{
		"nvim-mini/mini.nvim",
		version = "*",
		event = { "BufReadPost", "BufNewFile" },
		config = function()
			require("mini.ai").setup()
			require("mini.align").setup()
			require("mini.comment").setup()
			require("mini.operators").setup()
			require("mini.pairs").setup()
			require("mini.splitjoin").setup()
			require("mini.surround").setup()

			require("mini.bracketed").setup()
			require("mini.trailspace").setup()

			require("mini.colors").setup()
			require("mini.icons").setup()
		end,
	},
}
