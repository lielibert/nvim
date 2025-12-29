return {

	{
		"neovim/nvim-lspconfig",
		opts = {},
		dependencies = {
			"saghen/blink.cmp",
		},

		config = function()
			local blink = require("blink.cmp")
			local capabilities = {
				textDocument = {
					foldingRange = {
						dynamicRegistration = false,
						lineFoldingOnly = true,
					},
				},
			}
			capabilities = blink.get_lsp_capabilities(capabilities)

			filetypes = {
				"html",
				"javascript",
				"vue",
				"javascriptreact",
				"javascript.jsx",
				"typescript",
				"typescriptreact",
				"typescript.tsx",
			}
			vim.lsp.config("html", {

				filetypes = filetypes,
			})
		end,
	},
}
