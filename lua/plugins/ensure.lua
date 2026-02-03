return {

	{
		"noirbizarre/ensure.nvim",
		event = "InsertEnter",
		opts = {

			lsp = {

				enable = {
					"lua_ls",
					"vimls",
					"bashls",
					"texlab",
					"clangd",
					"neocmake",
					"rust_analyzer",
					"gopls",
					"pyright",
					"html",
					"cssls",
					"tailwindcss",
					"emmet_ls",
					"eslint",
					"vue_ls",
					-- quickshell
					"qmlls",
				},
			},

			formatters = {
				lua = "stylua",
				sh = "beautysh",
				c = "clang-format",
				cpp = "clang-format",
				cmake = "cmakelang",
				rust = "rustfmt",
				go = "gofmt",
				python = { "ruff_format", "ruff_organize_imports" },
				html = "prettierd",
				css = "prettierd",
				javascript = "prettierd",
				typescript = "prettierd",
				vue = "prettierd",
				latex = "latexindent",
				json = "jq",
			},

			linters = {
				-- lua = "luacheck",
				sh = "shellcheck",
				c = "clang-tidy",
				cpp = "cpplint",
				cmake = "cmakelang",
				rust = "bacon",
				python = "ruff",
				html = "htmlhint",
				css = "stylelint",
				javascript = "eslint_d",
				typescript = "eslint_d",
			},

			parsers = { "c", "cpp", "rust", "go", "lua", "python", "javascript", "typescript" },
			packages = { "codespell" },
		},
	},
}
