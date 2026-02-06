return {
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		lazy = true,
		priority = 2003,
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		config = function()
			require("noice").setup({
				lsp = {
					signature = {
						enabled = true,
						auto_open = {
							enabled = false,
							trigger = false, -- Automatically show signature help when typing a trigger character from the LSP
							luasnip = false, -- Will open signature help when jumping to Luasnip insert nodes
							throttle = 50, -- Debounce lsp signature help request by 50ms
						},
					},
				},
				presets = {
					bottom_search = false, -- use a classic bottom cmdline for search
					command_palette = false, -- position the cmdline and popupmenu together
					long_message_to_split = false, -- long messages will be sent to a split
					inc_rename = false, -- enables an input dialog for inc-rename.nvim
					lsp_doc_border = true, -- add a border to hover docs and signature help
				},
			})

			vim.keymap.set({ "i", "n" }, "<C-k>", function()
				require("noice.lsp").signature()
			end, { noremap = true, silent = true, desc = "Signature Help" })
		end,
	},
}
