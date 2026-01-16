return {
	{
		"nguyenvukhang/nvim-toggler",
		config = function()
			require("nvim-toggler").setup({
				inverses = {
					["vim"] = "emacs",
					["on"] = "off",
					["ON"] = "OFF",
					["1"] = "0",
					["true"] = "false",
					["True"] = "False",
					["TRUE"] = "FALSE",
				},
				remove_default_inverses = true,
				autoselect_longest_match = false,
			})
		end,
	},
}
