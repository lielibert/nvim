return {
	{
		"stevearc/conform.nvim",
		opts = {},
		event = { "InsertEnter", "BufReadPost", "BufNewFile" },
		config = function()
			require("conform").setup({
				-- format_on_save = true,
			})

			vim.keymap.set("n", "<leader>fm", function()
				require("conform").format({ async = true })
			end, { noremap = true, silent = true, desc = "Format Whole File" })
		end,
	},
}
