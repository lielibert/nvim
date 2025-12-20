return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = "VeryLazy",
		build = ":TSUpdate", -- update parsers after install
		config = function()
			require("nvim-treesitter.configs").setup({

				-- Only install parsers for specific languages
				ensure_installed = { "c", "cpp", "python", "lua", "javascript", "regex" },
				auto_install = true,
				highlight = {
					enable = false,
					additional_vim_regex_highlighting = false,
				},
				indent = { enable = true },
			})
		end,
	},
}
