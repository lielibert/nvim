return {
	{
		"danymat/neogen",
		config = true,
		event = "InsertEnter",
		-- Uncomment next line if you want to follow only stable versions
		version = "*",
		config = function()
			vim.keymap.set("i", "<C-n>", function()
				require("neogen").jump_next()
			end, { noremap = true, silent = true, desc = "docstrings jump next" })

			vim.keymap.set("i", "<C-p>", function()
				require("neogen").jump_prev()
			end, { noremap = true, silent = true, desc = "docstrings jump prev" })
		end,
	},
}
