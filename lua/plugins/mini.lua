local function get_recording()
	local reg = vim.fn.reg_recording()
	if reg == "" then return "" end
	return "Recording @" .. reg
end

return {
	{
		"nvim-mini/mini.nvim",
		version = "*",
		event = { "InsertEnter", "BufReadPost", "BufNewFile" },
		config = function()
			require("mini.align").setup()
			require("mini.comment").setup()
			require("mini.operators").setup()
			require("mini.pairs").setup(
				{
					modes = { insert = true, command = true, terminal = false },
					skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
					skip_ts = { "string" },
					skip_unbalanced = true,
					markdown = true,
				}
			)
			require("mini.splitjoin").setup()
			require('mini.icons').setup()
			require("mini.surround").setup()
			require('mini.icons').setup()
			require('mini.statusline').setup(
				{
					content = {
						active = function()
							local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = 120 })
							local git           = MiniStatusline.section_git({ trunc_width = 40 })
							local diff          = MiniStatusline.section_diff({ trunc_width = 75 })
							local diagnostics   = MiniStatusline.section_diagnostics({ trunc_width = 75 })
							local lsp           = MiniStatusline.section_lsp({ trunc_width = 75 })
							local filename      = MiniStatusline.section_filename({ trunc_width = 140 })
							local fileinfo      = MiniStatusline.section_fileinfo({ trunc_width = 120 })
							local location      = MiniStatusline.section_location({ trunc_width = 75 })
							local search        = MiniStatusline.section_searchcount({ trunc_width = 75 })
							local recording     = get_recording()
							--
							return MiniStatusline.combine_groups({
								{ hl = mode_hl,                 strings = { mode } },
								{ hl = 'MiniStatuslineDevinfo', strings = { git, diff, diagnostics, lsp } },
								'%<', -- Mark general truncate point
								{ hl = 'MiniStatuslineFilename', strings = { filename } },
								'%=', -- End left alignment
								{ hl = mode_hl,                  strings = { recording } },
								{ hl = 'MiniStatuslineFileinfo', strings = { fileinfo } },
								{ hl = mode_hl,                  strings = { search, location } },
							})
						end,
					},
				}

			)

			require("mini.files").setup()
			require('mini.basics').setup()
			require("mini.git").setup()
			require("mini.diff").setup({ view = { style = "sign", signs = { add = '+', change = '~', delete = '-' } } })

			require("mini.trailspace").setup()
		end,
	},
}
