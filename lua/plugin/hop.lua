return 
	{
		{
			"phaazon/hop.nvim",
			branch = "v2", -- v2 is the stable release
			event = "VeryLazy", -- load only when needed
			config = function()
				local hop = require("hop")
				hop.setup {}

				local directions = require("hop.hint").HintDirection

				-- Basic mappings
				vim.keymap.set("", "s", function()
					hop.hint_char1()
				end, { remap = true, desc = "Hop to single char" })

				vim.keymap.set("", "S", function()
					hop.hint_char2()
				end, { remap = true, desc = "Hop to two chars" })

				vim.keymap.set("", "f", function()
					hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
				end, { remap = true, desc = "Hop forward in line" })

				vim.keymap.set("", "F", function()
					hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
				end, { remap = true, desc = "Hop backward in line" })

				vim.keymap.set("", "t", function()
					hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
				end, { remap = true, desc = "Hop till forward in line" })

				vim.keymap.set("", "T", function()
					hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
				end, { remap = true, desc = "Hop till backward in line" })
			end,
		}
	}

