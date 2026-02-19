return {

	{
		"noirbizarre/ensure.nvim",
		event = { "InsertEnter", "BufReadPost", "BufNewFile" },
		dependencies = {
			{ "neovim/nvim-lspconfig" },
			{ "mfussenegger/nvim-lint" },
			{ "mason-org/mason.nvim",  opts = {} },
			{ "stevearc/conform.nvim", opts = {} },
		},
		opts = {

			lsp = {

				enable = {
					"lua_ls", "bashls", "neocmake", "clangd", "rust_analyzer",
					"gopls", "pyright", "html", "cssls", "tailwindcss", "emmet_ls", "eslint",
					"vue_ls", "jsonls", "texlab"
				},
			},

			formatters = {
				lua = "stylua",
				sh = "beautysh",
				cmake = "gersemi",
				c = "clang-format",
				cpp = "clang-format",
				rust = "rustfmt",
				go = "gofmt",
				python = { "ruff_format", "ruff_organize_imports" },
				html = "prettierd",
				css = "prettierd",
				javascript = "prettierd",
				typescript = "prettierd",
				vue = "prettierd",
				json = "jq",
				latex = "tex-fmt",
			},

			linters = {
				lua = "luacheck",
				sh = "shellcheck",
				cmake = "cmakelint",
				c = "cpplint",
				cpp = "cpplint",
				rust = "bacon",
				go = "golandci-lint",
				python = "ruff",
				html = "htmlhint",
				css = "stylelint",
				javascript = "eslint_d",
				typescript = "eslint_d",
				vue = "eslint_d",
				latex = "vale"
			},

			parsers = { "regex", "lua", "c", "cpp", "rust", "go", "python", "javascript", "typescript" },
			packages = { "codespell" },
		},
	},
}
