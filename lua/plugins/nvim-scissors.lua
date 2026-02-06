return {
	{
		"chrisgrieser/nvim-scissors",
		event = { "InsertEnter", "BufReadPost", "BufNewFile" },
		opts = {
			snippetDir = vim.fn.stdpath("config") .. "/snippets",
		},
		config = function()
			-- default settings
			require("scissors").setup({
				snippetDir = vim.fn.stdpath("config") .. "/snippets",
				editSnippetPopup = {
					height = 0.6, -- relative to the window, between 0-1
					width = 0.8,
					-- border = getBorder(), -- `vim.o.winborder` on nvim 0.11, otherwise "rounded"
					keymaps = {
						-- if not mentioned otherwise, the keymaps apply to normal mode
						cancel = "q",
						saveChanges = "<CR>", -- alternatively, can also use `:w`
						goBackToSearch = "<BS>",
						deleteSnippet = "<C-BS>",
						duplicateSnippet = "<C-d>",
						openInFile = "<C-o>",
						insertNextPlaceholder = "<C-p>", -- insert & normal mode
						showHelp = "?",
					},
				},

				snippetSelection = {
					picker = "auto", ---@type "auto"|"telescope"|"snacks"|"vim.ui.select"
				},

				-- `yq`/`jq` ensure formatted & sorted json files, which is relevant when
				-- you version control your snippets. To use a custom formatter, set to a
				-- list of strings, which will then be passed to `vim.system()`.
				-- TIP: `jq` is already pre-installed on newer versions of macOS.
				---@type "yq"|"jq"|"none"|string[]
				jsonFormatter = "jq",

				backdrop = {
					enabled = true,
					blend = 50, -- between 0-100
				},
				icons = {
					scissors = "󰩫",
				},
			})
			vim.keymap.set("n", "<leader>se", function()
				require("scissors").editSnippet()
			end, { desc = "Snippet: Edit" })

			vim.keymap.set({ "n", "x" }, "<leader>sa", function()
				require("scissors").addNewSnippet()
			end, { desc = "Snippet: Add" })
		end,
	},
}
