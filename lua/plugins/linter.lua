return {
	{
		"mfussenegger/nvim-lint",
		piority = -1000,
		config = function()
			local lint = require("lint")
			lint.linters_by_ft = {
				python = { "flake8" },
				cpp = { "cpplint" },
				cmake = { "cmakelint" },
				javascript = { "eslint_d" },
				typescript = { "eslint_d" },
				vue = { "eslint_d" },
				sh = { "shellcheck" },
			}
			-- Register an autocmd to listen for file saved for linter error
			vim.api.nvim_create_autocmd({ "BufWritePost" }, {
				callback = function()
					require("lint").try_lint()
				end,
			})
		end,
	},

	{
		"rshkarin/mason-nvim-lint",
		piority = -999,
		config = function()
			require("mason-nvim-lint").setup({
				ensure_installed = {},
				ignore_install = {}, -- avoid trying to install an unknown linter
			})
		end,
	},
}
