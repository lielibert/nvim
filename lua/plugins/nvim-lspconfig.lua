return {

	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"bashls",
					"clangd",
					"rust_analyzer",
					"neocmake",
					"pyright",
					"html",
					"cssls",
					"eslint",
					"vue_ls",
				},
			})
		end,
	},

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
