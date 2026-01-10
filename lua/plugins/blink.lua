return {
	{
		"saghen/blink.cmp",
		dependencies = {
			{
				"rafamadriz/friendly-snippets",
				keys = function()
					return {}
				end,
			},
			{ "L3MON4D3/LuaSnip", build = "make install_jsregexp" }, -- Snippet engine
		},

		build = "cargo build --release",
		opts = {
			signature = { enabled = false },
			sources = {
				providers = {
					snippets = {
						opts = {
							search_path = vim.fn.stdpath("config") .. "/snippets/",
						},
					},
				},
			},

			keymap = {
				preset = "default",

				["<CR>"] = { "accept", "fallback" },
			},
			appearance = {
				nerd_font_variant = "mono",
			},

			completion = {
				documentation = { auto_show = false },
				menu = {
					border = "single",
					scrollbar = false,
					draw = {
						treesitter = { "lsp" },
						columns = {
							{ "kind_icon", gap = 1 },
							{ "label", "label_description" },
						},
					},
				},
			},

			sources = {
				default = { "lsp", "snippets", "path", "buffer" },
			},

			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
		opts_extend = { "sources.default" },
	},
}
