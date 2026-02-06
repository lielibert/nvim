return {
	{
		"nvim-mini/mini.nvim",
		version = "*",
		event = { "InsertEnter", "BufReadPost", "BufNewFile" },
		config = function()
			require("mini.ai").setup()
			require("mini.align").setup()
			require("mini.comment").setup()
			require("mini.operators").setup()
			require("mini.pairs").setup()
			require("mini.splitjoin").setup()
			require("mini.surround").setup()
			require("mini.files").setup()

			require("mini.bracketed").setup()
			require("mini.trailspace").setup()
			require("mini.jump").setup()
			require("mini.jump2d").setup({
				mappings = {
					start_jumping = "\\",
				},
			})

			vim.keymap.set("n", "<leader>e", function()
				MiniFiles.open()
			end, { noremap = true, silent = true, desc = "file explorer" })

			-- require("mini.folds").setup()
		end,
	},
}
