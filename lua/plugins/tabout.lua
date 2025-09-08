return {
		"abecodes/tabout.nvim",
		event = "InsertEnter",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-cmp", -- optional, for completion integration
		},
		config = function()
			require("tabout").setup({
				tabkey = "<Tab>",        -- key to trigger tabout
				backwards_tabkey = "<S-Tab>", -- key to go backwards
				act_as_tab = true,       -- when true, will still insert a tab if nothing to jump
				act_as_shift_tab = true, -- shift tab behaves as expected
				enable_backwards = true,
				completion = true,       -- integrate with nvim-cmp
				ignore_beginning = true,
				exclude = {},            -- filetypes to exclude
			})
		end,
	}
