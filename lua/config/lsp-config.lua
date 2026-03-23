local config = vim.lsp.config

vim.diagnostic.config({
	update_in_insert = true,
	signs = {
		priority = 9999,
		text = {
			[vim.diagnostic.severity.ERROR] = " ✗",
			[vim.diagnostic.severity.WARN] = " ⚠",
			[vim.diagnostic.severity.INFO] = " ℹ",
			[vim.diagnostic.severity.HINT] = " ➤",
		},
	},
})

config("texlab", {
	settings = {
		texlab = {
			latexFormatter = "tex-fmt",
			bibtexFormatter = "tex-fmt",
		}
	}
})


vim.lsp.config('lua_ls', {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim", "Snacks" },
			},
		},
	},
})
