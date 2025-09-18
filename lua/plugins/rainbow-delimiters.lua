return {
	{
		"hiphish/rainbow-delimiters.nvim",
		config = function()
			-- Optional: Custom configuration goes here
			-- By default, it works out-of-the-box
			local rainbow_delimiters = require 'rainbow-delimiters'

			-- Example: Custom highlight groups
			vim.g.rainbow_delimiters = {
				strategy = {
					[''] = rainbow_delimiters.strategy.global,
					vim = rainbow_delimiters.strategy["local"],
				},
				query = {
					[''] = 'rainbow-delimiters',
					lua = 'rainbow-blocks',
				},
				highlight = {
					'RainbowDelimiterRed',
					'RainbowDelimiterYellow',
					'RainbowDelimiterBlue',
					'RainbowDelimiterOrange',
					'RainbowDelimiterGreen',
					'RainbowDelimiterViolet',
					'RainbowDelimiterCyan',
				},
			}
		end,
	}
}
