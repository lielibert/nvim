return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = "VeryLazy",
		build = ":TSUpdate", -- update parsers after install
		config = function()
			require("nvim-treesitter").setup({

				-- Only install parsers for specific languages
				ensure_installed = { "c", "cpp", "python", "lua", "javascript", "regex" },
				auto_install = true,
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = true,
				},
				indent = { enable = true },
			})
		end,
	},
}
