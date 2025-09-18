return {
	{
		"mfussenegger/nvim-lint",
		config = function()
			require("lint").linters_by_ft = {
				python = {"flake8"},
				cpp = {"cpplint"},
				cmake = {"cmakelang"},
				javascript = {"eslint"},
				typescript = {"eslint"},
				sh = {"shellcheck"},
			}
		end
	}

}
