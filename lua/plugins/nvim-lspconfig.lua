return {

	{
		"neovim/nvim-lspconfig",
		opts = {},
		event = { "InsertEnter", "BufReadPost", "BufNewFile" },
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
			vim.lsp.config("qmlls", {
				cmd = {
					"qmlls6",
				},
			})

			vim.lsp.config("texlab", {
				settings = {
					texlab = {
						latexFormatter = "tex-fmt",
						bibtexFormatter = "tex-fmt",
					}
				}
			})
		end,
	},
}
