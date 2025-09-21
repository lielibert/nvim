return {
	"romgrk/barbar.nvim",
	event = "BufWinEnter", -- loads as soon as a buffer window is shown
	dependencies = {
		{ "lewis6991/gitsigns.nvim", lazy = "BufWinEnter" }, -- OPTIONAL: for git status
		{
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
			lazy = "BufWinEnter",
		},
	},
	config = function()
		-- Setup barbar (optional settings)
		require("barbar").setup({
			-- Enable/disable animations
			animation = true,
			-- Show buffer icons
			icons = { buffer_index = true, filetype = { enabled = true } },
		})

		-- Navigate buffers

		vim.keymap.set("n", "<TAB>", "<cmd>BufferNext<CR>", { noremap = true, silent = true, desc = "Next Buffer" })
		vim.keymap.set(
			"n",
			"<S-TAB>",
			"<cmd>BufferPrevious<CR>",
			{ noremap = true, silent = true, desc = "Previous Buffer" }
		)

		-- Reorder buffers
		-- vim.keymap.set(
		-- 	"n",
		-- 	"<A-<>",
		-- 	"<cmd>BufferMovePrevious<CR>",
		-- 	{ noremap = true, silent = true, desc = "Reorder Buffers" }
		-- )
		-- vim.keymap.set(
		-- 	"n",
		-- 	"<A->>",
		-- 	"<cmd>BufferMoveNext<CR>",
		-- 	{ noremap = true, silent = true, desc = "Reorder Bufffers" }
		-- )

		vim.keymap.set("n", "<leader>bd", "<cmd>bd<CR>", { noremap = true, silent = true, desc = "Close Buffer" })
		vim.keymap.set(
			"n",
			"<leader>bo",
			"<cmd>BufferCloseAllButCurrent<CR>",
			{ noremap = true, silent = true, desc = "Close All But Not Current" }
		)
		vim.keymap.set(
			"n",
			"<leader>bl",
			"<cmd>BufferCloseLeft<CR>",
			{ noremap = true, silent = true, desc = "Close Left Buffer" }
		)
		vim.keymap.set(
			"n",
			"<leader>br",
			"<cmd>BufferCloseRight<CR>",
			{ noremap = true, silent = true, desc = "Close Right Buffer" }
		)

		for i = 1, 9 do
			vim.keymap.set(
				"n",
				"<leader>" .. i,
				":BufferGoto " .. i .. "<CR>",
				{ noremap = true, silent = true, desc = "Navigate Between Buffers" }
			)
		end
		vim.keymap.set(
			"n",
			"<leader>0",
			":BufferLast<CR>",
			{ noremap = true, silent = true, desc = "Go to Last Buffer" }
		)
	end,
}
