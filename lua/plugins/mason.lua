return {

	{
		"mason-org/mason.nvim",
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"lua_ls",
				"texlab",
				"pyright",
				"cmake",
				"clangd",
			},
		},
	},

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
			vim.lsp.config("texlab",{

				capabilities = capabilities,
				settings = {
					texlab = {
						build = {
							executable = "latexmk",
							args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
							onSave = true,
						},
						forwardSearch = {
							executable = "zathura",
							args = { "--synctex-forward", "%l:1:%f", "%p" },
						},
					},
				},
			})

			vim.lsp.config("pyright",{
				capabilities = capabilities,
			})

			vim.lsp.config("clangd",{
				capabilities = capabilities,

				cmd = {
					"clangd",
					"--background-index",
					"--clang-tidy",
					"--header-insertion=never",
					"--compile-commands-dir=build",
				}, -- path to clangd binary
				filetypes = { "cc", "c", "cpp", "objc", "objcpp" },
				root_dir = function()
					return vim.fs.find({"CMakeLists.txt","compile_flags.txt","compile_commands.json"}, { upward = true })[1]
				end,
			})
			vim.lsp.config("neocmake",{
				capabilities = capabilities,
			})
		end,
	},
}
