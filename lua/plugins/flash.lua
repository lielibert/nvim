return {

	{
		"folke/flash.nvim",
		event = "verylazy",
		opts = {},
		keys = {
			{ "ss",    mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "flash" },
			{ "r",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "treesitter search" },
			{ "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "toggle flash search" },
		},
	},
}
