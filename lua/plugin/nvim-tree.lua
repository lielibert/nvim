return {
	"nvim-tree/nvim-tree.lua",
	event = "VimEnter",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup {
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 30,
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = true,
			},
		}
		-- vim.keymap.set("n","<leader>e", ":NvimTreeToggle<CR>",{noremap = true, silent = true})

	end,
}
