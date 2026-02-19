return {
	"monaqa/dial.nvim",
	event = { "InsertEnter", "BufReadPost", "BufNewFile" },
	config = function()
		local augend = require("dial.augend")
		require("dial.config").augends:register_group({

			default = {
				augend.integer.alias.decimal,
				augend.integer.alias.hex,
				augend.date.alias["%Y/%m/%d"],
				augend.constant.alias.bool,
				augend.constant.alias.alpha,
				augend.constant.alias.Alpha
			},


			mygroup = {
				augend.integer.alias.decimal,
				augend.constant.alias.bool,
				augend.date.alias["%m/%d/%Y"],
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
