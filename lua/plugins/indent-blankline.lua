return {
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {
			indent = { char = "│", tab_char = "│" },
			whitespace = { remove_blankline_trail = false },
			scope = { enabled = false },
			-- Show dots for spaces
			-- See plugin docs for more advanced options
		},
		config = function(_, opts)
			require("ibl").setup(opts)
			-- Show dots for spaces (only in blank lines or everywhere)
			vim.opt.list = true
			vim.opt.listchars:append("space:·")
		end,
	},
}
