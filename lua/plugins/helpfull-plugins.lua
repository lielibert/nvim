return {

	{ "danymat/neogen",                  cmd = "Neogen" },
	{ "andersevenrud/nvim_context_vt",   event = { "InsertEnter", "BufReadPost", "BufNewFile" }, },
	{ "RRethy/base16-nvim",              lazy = false, },
	{ "HiPhish/rainbow-delimiters.nvim", event = { "InsertEnter", "BufReadPost", "BufNewFile" }, },
	{
		"norcalli/nvim-colorizer.lua",
		event = { "InsertEnter", "BufReadPost", "BufNewFile" },
		config = function()
			require("colorizer").setup({
				"*",
				user_default_options = {
					rgb_fn = true,
					css = true,
					mode = "background",
				},
			})
		end,
	}


}
