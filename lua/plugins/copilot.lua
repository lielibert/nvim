return {
	{ "github/copilot.vim" },
	-- lazy.nvim setup
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				suggestion = {
					enabled = true,
					auto_trigger = true,
					keymap = {
						accept = "<C-J>",
						next = "<C-K>",
						prev = "<C-H>",
						dismiss = "<C-L>",
					},
				},
				panel = { enabled = true },
			})
		end,
	}

}

