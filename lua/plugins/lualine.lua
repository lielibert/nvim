return {
	"nvim-lualine/lualine.nvim",
	event = { "InsertEnter", "BufReadPost", "BufNewFile" },
	priority = 2006,
	dependencies = { { "nvim-tree/nvim-web-devicons" }, },
	config = function()
		require("lualine").setup({
			theme = "base16",
			options = {
				icons_enabled = true,
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				always_show_tabline = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
					refresh_time = 16, -- ~60fps
					events = {
						"WinEnter",
						"BufEnter",
						"BufWritePost",
						"SessionLoadPost",
						"FileChangedShellPost",
						"VimResized",
						"Filetype",
						"CursorMoved",
						"CursorMovedI",
						"ModeChanged",
					},
				},
			},
			sections = {
				lualine_a = {
					{
						function()
							local reg = vim.fn.reg_recording()
							if reg == "" then
								return ""
							else
								return "Recording @" .. reg
							end
						end,
					},
					"mode",
				},
				lualine_b = {
					"branch",
					"diff",
					"diagnostics",
				},
				lualine_c = {},
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = { "filename" },
				lualine_c = {},
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {
				lualine_c = {
					{
						"filename",
						path = 1, -- 2 for absolute path
					},
				},
				lualine_x = {
					function()
						return os.date("%a %H:%M")
					end,
				},
			},
			inactive_winbar = {
				lualine_c = {
					{
						"filename",
						path = 1, -- 2 for absolute path
					},
				},
				lualine_x = {
					function()
						return os.date("%a %H:%M")
					end,
				},
			},
			extensions = {},
		})
	end,
}
