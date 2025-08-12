return {
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					theme = "tokyonight", -- matches your tokyonight-moon colorscheme
					section_separators = { left = "", right = "" },
					component_separators = { left = "", right = "" },
				},
			})
		end
	}
