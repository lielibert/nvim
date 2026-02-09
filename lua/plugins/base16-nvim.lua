return {

	{
		"RRethy/base16-nvim",
		event = "VeryLazy",
		config = function()
			require("base16-colorscheme").setup()
		end
	},

	{
		"xiyaowong/transparent.nvim",
		config = function()
			require("transparent").setup({
				groups = {
					'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
					'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
					'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
					'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
					'EndOfBuffer' },

				extra_groups = { "ErrorMsg", "SnacksNormal", "SnacksNormalNC", "SnacksPicker",
					"SnacksPickerBorder", "SnacksNormalFloat", "GitSignsAdd", "GitSignsChange",
					"GitSignsDelete"
				},
				exclude_groups = {},
				on_clear = function() end,
			})
			-- require('transparent').clear_prefix('lualine')
		end,
	}
}
