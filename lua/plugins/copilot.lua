return {
	{ "github/copilot.vim" },
	-- lazy.nvim setup
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = { "InsertEnter", "BufReadPost", "BufNewFile" },
		config = function()
			require("copilot").setup({
				suggestion = {
					enabled = true,
					auto_trigger = true,
					keymap = {
						accept = "<Tab>",
						next = "<C-n>",
						prev = "<C-p>",
						dismiss = "<C-Space>",
					},
				},
				panel = { enabled = true },
			})
		end,
	},
}
