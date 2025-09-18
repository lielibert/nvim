return {
{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1005,
		opts = {},
		config = function()
			vim.cmd([[colorscheme tokyonight-storm]])
		end,
	},

}
