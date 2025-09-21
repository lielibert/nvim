return {
	-- Add this inside your plugin setup table
	{
		"ojroques/nvim-osc52",
		config = function()
			local osc52 = require("osc52").setup({
				max_length = 0, -- Maximum length of selection (0 for no limit)
				silent = false, -- Disable message on successful copy
				trim = false, -- Trim surrounding whitespaces before copy
				tmux_passthrough = false, -- Use tmux passthrough (requires tmux: set -g allow-passthrough on)
			})

			-- Automatically copy yanks to local clipboard
			-- vim.api.nvim_create_autocmd("TextYankPost", {
			-- 	callback = function()
			-- 		if vim.v.event.operator == "y" then
			-- 			osc52.copy_register("+")
			-- 		end
			-- 	end,
			-- })
		end,
	},
}
