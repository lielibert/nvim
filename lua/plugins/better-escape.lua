return {
	{
		"max397574/better-escape.nvim",
		event = "InsertEnter", -- lazy load when entering insert mode
		config = function()
			require("better_escape").setup({
				timeout = 200, -- after `timeout` passes, you can press the escape key and the plugin will ignore it
				default_mappings = false, -- setting this to false removes all the default mappings
				mappings = {
					-- i for insert
					i = {
						j = {
							-- These can all also be functions
							k = "<Esc>",
							j = "<Esc>",
						},
						k = {
							j = "<Esc>",

						}
					},
					c = {
						j = {
							k = "<C-c>",
							j = "<C-c>",
						},
					},
					t = {
						j = {
							k = "<C-\\><C-n>",
						},
					},
					v = {
						j = {
							k = "<Esc>",
						},
					},
					s = {
						j = {
							k = "<Esc>",
						},
					},
				},
			})
		end,
	},
}
