local path = vim.fn.stdpath("config") .. "/lua/plugin/"

-- uncomment the below line to use new config path.

--  local path = " {{ can provide a new config path }}"


return {
	-- config file are in the plugin folder.
	dofile(path .. "snacks.lua"),
	dofile(path .. "toggleterm.lua"),
	dofile(path .. "barbar.lua"),
	dofile(path .. "lazydev.lua"),
	dofile(path .. "mason.lua"),
	dofile(path .. "nvim-tree.lua"),
	dofile(path .. "telescope.lua"),
	dofile(path .. "tabout.lua"),
	dofile(path .. "which-key.lua"),
	dofile(path .. "nvim-lualine.lua"),
	dofile(path .. "nvim-treesitter.lua"),
	dofile(path .. "nvim-surround.lua"),
	dofile(path .. "nvim-cmp.lua"),
	dofile(path .. "git.lua"),
	
	-- small plugins
	{
		"echasnovski/mini.icons",
		branch= "main"
	},

	{
		"mg979/vim-visual-multi",
		branch = "master"
	},

	{

		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
	},

	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},

	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},

	{
		'numToStr/Comment.nvim',
		opts = {
			-- add any options here
		}
	},

}
