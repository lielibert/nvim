return {

	{
		"saghen/blink.cmp",
		event = { "InsertEnter", "BufReadPost", "BufNewFile" },
		priority = 2008,
		version = "1.*",
		dependencies = {
			{ "rafamadriz/friendly-snippets" },
			{ "chrisgrieser/nvim-scissors",  opts = { snippetDir = vim.fn.stdpath("config") .. "/snippets" } },
			{
				"L3MON4D3/LuaSnip",
				build = "make install_jsregexp",
				config = function()
					require("luasnip.loaders.from_vscode").lazy_load()
					require("luasnip.loaders.from_vscode").lazy_load({
						paths = { "~/.config/nvim/snippets" }
					})
					vim.keymap.set({ "i", "s" }, "<C-e>", function()
						local luasnip = require("luasnip")
						if luasnip.in_snippet() then
							luasnip.unlink_current()
						else
							vim.api.nvim_feedkeys(
								vim.api.nvim_replace_termcodes("<C-e>", true, false, true),
								"n",
								true
							)
						end
					end)
				end
			},
		},

		-- build = "cargo build --release",

		opts = {
			signature = { enabled = false },
			keymap = { preset = "enter", },
			appearance = { nerd_font_variant = "mono" },
			snippets = { preset = 'luasnip' },
			completion = {
				documentation = { auto_show = false },
				menu = {
					border = "single",
					scrollbar = false,
					draw = { treesitter = { "lsp", "snippets", "path", "buffer" } },
				},
			},

			sources = { default = { "snippets", "lsp", "path", "buffer" } },
			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
		opts_extend = { "sources.default" },
	},

}
