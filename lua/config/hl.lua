local hl = vim.api.nvim_set_hl

local apply_hl = function()

	-- highlight group for blink
	hl(0, "BlinkCmpMenu", { fg = "#ffffff", bg = "NONE" })
	hl(0, "BlinkCmpMenuBorder", { fg = "#707070" })
	hl(0, "BlinkCmpMenuSelection", { fg = "NONE", bg = "#808080" })
	hl(0, "BlinkCmpLabel", { fg = "#eeeeee", bg = "NONE" })
	hl(0, "BlinkCmpLabelDetail", { fg = "#909090", bg = "NONE" })
	hl(0, "BlinkCmpLabelDeprecated", { fg = "#909090", bg = "NONE" })
	hl(0, "BlinkCmpLabelDescription", { fg = "#909090", bg = "NONE" })
	hl(0, "BlinkCmpKind", { fg = "#ffffff", bg = "NONE" })
	hl(0, "BlinkCmpSource", { fg = "#ffffff", bg = "NONE" })
	hl(0, "TSComment", { fg = "#888888", bg = "NONE", bold = true })

	-- hl for flash.nvim
	hl(0, "FlashLabel", { fg = "#ffffff", bg = "#ff007c", bold = true, })
	hl(0, "FlashMatch", { fg = "#ff007c", bold = true, })
	hl(0, "FlashCurrent", { fg = "#ffffff", bg = "#5f00ff", bold = true, })
	hl(0, "FlashBackdrop", { fg = "#545c7e", })

	-- hl for multiplecursor
	hl(0, "MultiCursorCursor", { reverse = true })
	hl(0, "MultiCursorVisual", { link = "Visual" })
	hl(0, "MultiCursorSign", { link = "SignColumn" })
	hl(0, "MultiCursorMatchPreview", { link = "Search" })
	hl(0, "MultiCursorDisabledCursor", { reverse = true })
	hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
	hl(0, "MultiCursorDisabledSign", { link = "SignColumn" })
end

vim.api.nvim_create_autocmd("colorscheme", { callback = apply_hl, })
