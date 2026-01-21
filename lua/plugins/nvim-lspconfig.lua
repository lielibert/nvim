return {

	{
		"neovim/nvim-lspconfig",
		opts = {},
		event = { "BufReadPost", "BufNewFile" },
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
		end,
	},
}
