return {

	{
		"norcalli/nvim-colorizer.lua",
		event = { "InsertEnter", "BufReadPost", "BufNewFile" },
		priority = 2001,
		config = function()
			require("colorizer").setup({
				"*",
				user_default_options = {
					rgb_fn = true,
					css = true,
					mode = "background", -- Set the display mode (foreground, background, or virtualtext)
				},
			})
		end,
	} }
