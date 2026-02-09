return {

	{
		"noirbizarre/ensure.nvim",
		event = { "InsertEnter", "BufReadPost", "BufNewFile" },
		dependencies = {

			{ "mason-org/mason.nvim",  opts = {} },
			{ "neovim/nvim-lspconfig" },
			{ "stevearc/conform.nvim", opts = {} },
			{ "mfussenegger/nvim-lint" },
			{ "danymat/neogen",        config = true, event = "InsertEnter", version = "*" },

		},
		opts = {

			lsp = {

				enable = {
					"lua_ls", "vimls", "bashls", "texlab", "clangd", "neocmake", "rust_analyzer",
					"gopls", "pyright", "html", "cssls", "tailwindcss", "emmet_ls", "eslint",
					"vue_ls", "qmlls", "jsonls"
				},
			},

			formatters = {
				lua = "stylua",
				sh = "beautysh",
				c = "clang-format",
				cpp = "clang-format",
				cmake = "gersemi",
				rust = "rustfmt",
				go = "gofmt",
				python = { "ruff_format", "ruff_organize_imports" },
				html = "prettierd",
				css = "prettierd",
				javascript = "prettierd",
				typescript = "prettierd",
				vue = "prettierd",
				latex = "tex-fmt",
				json = "jq",
			},

			linters = {
				lua = "luacheck",
				sh = "shellcheck",
				c = "clang-tidy",
				cpp = "cpplint",
				cmake = "cmakelint",
				rust = "bacon",
				python = "ruff",
				html = "htmlhint",
				css = "stylelint",
				javascript = "eslint_d",
				typescript = "eslint_d",
				latex = "vale"
			},

			parsers = { "regex", "c", "cpp", "rust", "go", "lua", "python", "javascript", "typescript" },
			packages = { "codespell" },
		},
	},
}
