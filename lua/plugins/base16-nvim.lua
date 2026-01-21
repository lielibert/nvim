return {

	{
		"RRethy/base16-nvim",
		event = "VeryLazy",
		config = function()
			require("base16-colorscheme").setup()
		end,
	},
}
