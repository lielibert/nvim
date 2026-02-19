return {

	{
		"nvim-treesitter/nvim-treesitter",
		-- lazy = false,
		event = { "InsertEnter", "BufReadPost", "BufNewFile" },
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter").install({ "rust", "javascript", "cpp", "regex" })
			vim.api.nvim_create_autocmd("FileType", {
				pattern = { "<filetype>" },
				callback = function()
					vim.treesitter.start()
					vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
					vim.wo[0][0].foldmethod = "expr"
					vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end,
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		dependenies = { "nvim-treesitter/nvim-treesitter", },
		event = { "InsertEnter", "BufReadPost", "BufNewFile" },
		branch = "main",
		init = function()
			vim.g.no_plugin_maps = true

			-- Or, disable per filetype (add as you like)
			-- vim.g.no_python_maps = true
			-- vim.g.no_ruby_maps = true
			-- vim.g.no_rust_maps = true
			-- vim.g.no_go_maps = true
		end,

		config = function()
			require("nvim-treesitter-textobjects").setup({
				move = { set_jumps = true, },
				select = {
					lookahead = true,
					selection_modes = {
						["@parameter.outer"] = "v",
						["@function.outer"] = "V",
						-- ['@class.outer'] = '<c-v>', -- blockwise
					},
					include_surrounding_whitespace = false,
				},
			})

			-- keymaps
			-- You can use the capture groups defined in `textobjects.scm`
			local key = vim.keymap.set
			local select = require("nvim-treesitter-textobjects.select").select_textobject
			local swap = require("nvim-treesitter-textobjects.swap")
			local move = require("nvim-treesitter-textobjects.move")

			key({ "x", "o" }, "af", function() select("@function.outer", "textobjects") end)
			key({ "x", "o" }, "if", function() select("@function.inner", "textobjects") end)
			key({ "x", "o" }, "ac", function() select("@class.outer", "textobjects") end)
			key({ "x", "o" }, "ic", function() select("@class.inner", "textobjects") end)
			key({ "x", "o" }, "am", function() select("@comment.outer", "textobjects") end)
			key({ "x", "o" }, "im", function() select("@comment.inner", "textobjects") end)
			key({ "x", "o" }, "am", function() select("@comment.outer", "textobjects") end)
			key({ "x", "o" }, "im", function() select("@comment.inner", "textobjects") end)
			key({ "x", "o" }, "aa", function() select("@parameter.outer", "textobjects") end)
			key({ "x", "o" }, "ia", function() select("@parameter.inner", "textobjects") end)
			-- You can also use captures from other query groups like `locals.scm`
			key({ "x", "o" }, "as", function() select.select_textobject("@local.scope", "locals") end)

			key("n", "<leader>a", function() swap.swap_next("@parameter.inner") end)
			key("n", "<leader>A", function() swap.swap_previous("@parameter.outer") end)

			-- keymaps
			-- You can use the capture groups defined in `textobjects.scm`
			key({ "n", "x", "o" }, "]f",
				function() move.goto_next_start("@function.outer", "textobjects") end)
			key({ "n", "x", "o" }, "]]",
				function() move.goto_next_start("@class.outer", "textobjects") end)
			-- You can also pass a list to group multiple queries.
			key({ "n", "x", "o" }, "]o",
				function() move.goto_next_start({ "@loop.inner", "@loop.outer" }, "textobjects") end)
			key({ "n", "x", "o" }, "]m",
				function() move.goto_next_start({ "@comment.inner", "@comment.outer" }, "textobjects") end)
			-- You can also use captures from other query groups like `locals.scm` or `folds.scm`
			key({ "n", "x", "o" }, "]s", function() move.goto_next_start("@local.scope", "locals") end)
			key({ "n", "x", "o" }, "]z", function() move.goto_next_start("@fold", "folds") end)

			key({ "n", "x", "o" }, "]F",
				function() move.goto_next_end("@function.outer", "textobjects") end)
			key({ "n", "x", "o" }, "][",
				function() move.goto_next_end("@class.outer", "textobjects") end)
			key({ "n", "x", "o" }, "]M",
				function() move.goto_next_end("@comment.outer", "textobjects") end)

			key({ "n", "x", "o" }, "[f",
				function() move.goto_previous_start("@function.outer", "textobjects") end)
			key({ "n", "x", "o" }, "[[",
				function() move.goto_previous_start("@class.outer", "textobjects") end)
			key({ "n", "x", "o" }, "[m",
				function() move.goto_previous_start("@comment.outer", "textobjects") end)

			key({ "n", "x", "o" }, "[F",
				function() move.goto_previous_end("@function.outer", "textobjects") end)
			key({ "n", "x", "o" }, "[]",
				function() move.goto_previous_end("@class.outer", "textobjects") end)
			key({ "n", "x", "o" }, "[M",
				function() move.goto_previous_end("@comment.outer", "textobjects") end)

			-- Go to either the start or the end, whichever is closer.
			-- Use if you want more granular movements
			key({ "n", "x", "o" }, "]gd",
				function() move.goto_next("@conditional.outer", "textobjects") end)
			key({ "n", "x", "o" }, "[gd",
				function() move.goto_previous("@conditional.outer", "textobjects") end)


			local ts_repeat_move = require("nvim-treesitter-textobjects.repeatable_move")
			-- Repeat movement with ; and ,
			-- ensure ; goes forward and , goes backward regardless of the last direction
			key({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move_next)
			key({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_previous)

			-- vim way: ; goes to the direction you were moving.
			-- vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move)
			-- vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_opposite)

			-- Optionally, make builtin f, F, t, T also repeatable with ; and ,
			key({ "n", "x", "o" }, "f", ts_repeat_move.builtin_f_expr, { expr = true })
			key({ "n", "x", "o" }, "F", ts_repeat_move.builtin_F_expr, { expr = true })
			key({ "n", "x", "o" }, "t", ts_repeat_move.builtin_t_expr, { expr = true })
			key({ "n", "x", "o" }, "T", ts_repeat_move.builtin_T_expr, { expr = true })
		end,
	},
}
