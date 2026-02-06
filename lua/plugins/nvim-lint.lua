return {
	{
		"mfussenegger/nvim-lint",
		event = { "InsertEnter", "BufReadPost", "BufNewFile" },

		config = function()
			local lint = require("lint")
			vim.api.nvim_create_autocmd({ "BufWritePost" }, {
				callback = function()
					require("lint").try_lint()
				end,
			})
		end,
	},
}
