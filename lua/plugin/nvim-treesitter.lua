return 	{
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "cpp", "c", "lua", "python" }, -- Add languages here
			highlight = {
				enable = true,              -- Enable syntax highlighting
				additional_vim_regex_highlighting = true, -- Turn off old regex highlighting
			},
		})
	end,	
}
	
