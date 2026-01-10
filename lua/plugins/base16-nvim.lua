return {

	{
		"RRethy/base16-nvim",

		config = function()
			require("base16-colorscheme").setup()
			vim.cmd.colorscheme("base16-tokyo-night-storm")
		end,
	},
}
