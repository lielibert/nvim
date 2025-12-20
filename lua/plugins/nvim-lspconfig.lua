return {

	{
		"neovim/nvim-lspconfig",
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
		end,
	},
}
