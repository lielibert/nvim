return {

	{
		"rshkarin/mason-nvim-lint",
		piority = -999,
		config = function()
			require("mason-nvim-lint").setup({
				ensure_installed = {
					"selene",
					"shellcheck",
					"cpplint",
					-- "bacon",
					"flake8",
					"htmlhint",
					"stylelint",
					"eslint_d",
				},
				ignore_install = {}, -- avoid trying to install an unknown linter
			})
		end,
	},

	{
		"mfussenegger/nvim-lint",
		piority = -1000,
		config = function()
			local lint = require("lint")
			lint.linters_by_ft = {
				sh = { "shellcheck" },
				c = { "cpplint" },
				cpp = { "cpplint" },
				cmake = { "cmakelint" },
				-- rust = { "bacon" },
				python = { "flake8" },
				html = { "htmlhint" },
				css = { "stylelint" },
				javascript = { "eslint_d" },
				typescript = { "eslint_d" },
				vue = { "eslint_d" },
			}
			-- Register an autocmd to listen for file saved for linter error
			vim.api.nvim_create_autocmd({ "BufWritePost" }, {
				callback = function()
					require("lint").try_lint()
				end,
			})
		end,
	},
}
