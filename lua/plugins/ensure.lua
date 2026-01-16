return {
	{
		"noirbizarre/ensure.nvim",
		opts = {
			-- LSP servers
			lsp = {
				enable = {
					"lua_ls",
					"vimls",
					"bashls",
					"clangd",
					"neocmake",
					"rust_analyzer",
					"pyright",
					"html",
					"cssls",
					"tailwindcss",
					"emmet_ls",
					"eslint",
					"vue_ls",
				},
			},
			-- Formatters (by filetype)
			formatters = {
				lua = "stylua",
				sh = "beautysh",
				c = "clang-format",
				cpp = "clang-format",
				cmake = "cmakelang",
				rust = "rustfmt",
				python = { "ruff_format", "ruff_organize_imports" },
				html = "prettierd",
				css = "prettierd",
				javascript = "prettierd",
				typescript = "prettierd",
				vue = "prettierd",
			},
			-- Linters (by filetype)
			linters = {
				-- lua = "luacheck",
				sh = "shellcheck",
				c = "cpplint",
				cpp = "cpplint",
				cmake = "cmakelang",
				rust = "bacon",
				python = "ruff",
				html = "htmlhint",
				css = "stylelint",
				javascript = "eslint_d",
				typescript = "eslint_d",
			},
			-- Tree-sitter parsers (array format for specific parsers)
			parsers = { "lua", "python", "javascript", "typescript" },
			-- Additional Mason packages
			packages = { "codespell" },
		},
	},
}
