return 

	{
		'romgrk/barbar.nvim',
		lazy = false,
		dependencies = {
			'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
			'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
			{
				'moll/vim-bbye',  -- fast buffer deletion
				lazy = true
			}
		},
		config = function()
			-- Setup barbar (optional settings)
			require("barbar").setup({
				-- Enable/disable animations
				animation = true,
				-- Show buffer icons
				icons = { buffer_index = true, filetype = { enabled = true } },
			})

			local opts = { noremap = true, silent = true }
			-- Config for barbar.lua

			-- Navigate buffers  Not Committed Yet  Not Committed Yet
			vim.keymap.set('n', '<TAB>', ':BufferNext<CR>', opts)
			vim.keymap.set('n', '<S-TAB>', ':BufferPrevious<CR>', opts)

			-- Reorder buffers
			vim.keymap.set('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
			vim.keymap.set('n', '<A->>', ':BufferMoveNext<CR>', opts)

			-- Close buffers using Bdelete (fast)
			vim.keymap.set('n', '<leader>c', ':Bdelete<CR>', opts)               -- close current
			vim.keymap.set('n', '<leader>co', ':BufferCloseAllButCurrent<CR>', opts) -- close others
			vim.keymap.set('n', '<leader>cl', ':BufferCloseLeft<CR>', opts)         -- close left
			vim.keymap.set('n', '<leader>cr', ':BufferCloseRight<CR>', opts)        -- close right

			for i = 1, 9 do
				vim.keymap.set('n', '<leader>' .. i, ':BufferGoto ' .. i .. '<CR>', opts)
			end
			vim.keymap.set('n', '<leader>0', ':BufferLast<CR>', opts)
		end

	}
