local path = vim.fn.stdpath("config") .. "/lua/plugin/"

-- uncomment the below line to use new config path.
	--  local path = " {{ can provide a new config path }}"


return 
	{
		{
			"folke/tokyonight.nvim",
			lazy = false,
			priority = 1005,
			opts = {},
			config = function()
				vim.cmd[[colorscheme tokyonight-storm]]
			end
		},

		-- config file are in the plugin folder.
		dofile(path .. "barbar.lua"),
		dofile(path .. "mason.lua"),
		dofile(path .. "snacks.lua"),
		dofile(path .. "nvim-treesitter.lua"),
		dofile(path .. "nvim-lualine.lua"),
		dofile(path .. "better-escape.lua"),
		dofile(path .. "hop.lua"),
		dofile(path .. "nvim-cmp.lua"),
		dofile(path .. "nvim-surround.lua"),
		dofile(path .. "which-key.lua"),
		dofile(path .. "tabout.lua"),
		dofile(path .. "conform.lua"),
		dofile(path .. "ale.lua"),


		-- dofile(path .. "osc52.lua"),
		-- dofile(path .. "lazydev.lua"), --load when creating your own plugins and uncomment the lazydev file.
		-- dofile(path .. "telescope.lua"),

		-- small plugins
		-- {
		-- 	"echasnovski/mini.icons",
		-- 	event = "VeryLazy",
		-- 	branch= "main"
		-- },
		{

			"lukas-reineke/indent-blankline.nvim",
			event = "VeryLazy",
			main = "ibl",
			---@module "ibl"
			---@type ibl.config
			opts = {
			},
			config = function()
				require("ibl").setup(
					{
						indent = {
							char = "┆",

						},
						whitespace = { highlight = { "Whitespace", "NonText" } },
					}
				)
			end
		},

		{
			"mg979/vim-visual-multi",
			event = "VeryLazy",
			branch = "master"
		},


		{
			"windwp/nvim-autopairs",
			event = "VeryLazy",
			event = "InsertEnter",
			config = function()
				require("nvim-autopairs").setup({})
			end,
		},



		{
			'numToStr/Comment.nvim',
			event = "VeryLazy",
			opts = {
				-- add any options here
			}
		},

	}
