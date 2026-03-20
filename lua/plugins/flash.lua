return {

	{
		"folke/flash.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			{ "ss", mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
			{ "S",  mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash TS" },
			{ "r",  mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
			{ "R",  mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "TS Search" }
		},
	}
}
