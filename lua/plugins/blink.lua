return {
	{
		"saghen/blink.cmp",
		event = "InsertEnter",
		priority = 2008,
		dependencies = {
			{ "rafamadriz/friendly-snippets" },
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
					},
				},
			},

			sources = {
				default = { "snippets", "lsp", "path", "buffer" },
			},

			fuzzy = { implementation = "lua" },
		},
		opts_extend = { "sources.default" },
	},
}
