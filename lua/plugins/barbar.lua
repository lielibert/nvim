return
{
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

		-- Navigate buffers  Not Committed Yet  Not Committed Yet
		vim.keymap.set("n", "<TAB>", ":BufferNext<CR>", opts)
		vim.keymap.set("n", "<S-TAB>", ":BufferPrevious<CR>", opts)

		-- Reorder buffers
		vim.keymap.set("n", "<A-<>", ":BufferMovePrevious<CR>", opts)
		vim.keymap.set("n", "<A->>", ":BufferMoveNext<CR>", opts)

		-- Close buffers using Bdelete (fast)
		vim.keymap.set("n", "<leader>bd", ":Bd<CR>", opts) -- close current
		vim.keymap.set("n", "<leader>bo", ":BufferCloseAllButCurrent<CR>", opts) -- close others
		vim.keymap.set("n", "<leader>bl", ":BufferCloseLeft<CR>", opts) -- close left
		vim.keymap.set("n", "<leader>br", ":BufferCloseRight<CR>", opts) -- close right

		for i = 1, 9 do
			vim.keymap.set("n", "<leader>" .. i, ":BufferGoto " .. i .. "<CR>", opts)
		end
		vim.keymap.set("n", "<leader>0", ":BufferLast<CR>", opts)
	end,
}
