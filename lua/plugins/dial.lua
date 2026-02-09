return {
	"monaqa/dial.nvim",
	event = { "InsertEnter", "BufReadPost", "BufNewFile" },
	config = function()
		local augend = require("dial.augend")
		require("dial.config").augends:register_group({
			-- default augends used when no group name is specified
			default = {
				augend.integer.alias.decimal, -- nonnegative decimal number (0, 1, 2, 3, ...)
				augend.integer.alias.hex, -- nonnegative hex number  (0x01, 0x1a1f, etc.)
				augend.date.alias["%Y/%m/%d"], -- date (2022/02/19, etc.)
				augend.constant.alias.bool, -- boolean value (true <-> false)
			},

			-- augends used when group with name `mygroup` is specified
			mygroup = {
				augend.integer.alias.decimal,
				augend.constant.alias.bool, -- boolean value (true <-> false)
				augend.date.alias["%m/%d/%Y"], -- date (02/19/2022, etc.)
			},
		})

		local key = vim.keymap.set

		key("n", "<C-a>", function() require("dial.map").manipulate("increment", "normal") end)
		key("n", "<C-x>", function() require("dial.map").manipulate("decrement", "normal") end)
		key("n", "g<C-a>", function() require("dial.map").manipulate("increment", "gnormal") end)
		key("n", "g<C-x>", function() require("dial.map").manipulate("decrement", "gnormal") end)
		key("x", "<C-a>", function() require("dial.map").manipulate("increment", "visual") end)
		key("x", "<C-x>", function() require("dial.map").manipulate("decrement", "visual") end)
		key("x", "g<C-a>", function() require("dial.map").manipulate("increment", "gvisual") end)
		key("x", "g<C-x>", function() require("dial.map").manipulate("decrement", "gvisual") end)
	end,
}
