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


	hl(0, 'FlashMatch', { foreground = '#ffffff', background = '#00aa00' })
	hl(0, 'FlashCurrent', { foreground = '#D0E8F2', background = '#456268' })
	hl(0, 'FlashLabel', { foreground = '#EEF5FF', background = '#FF5772' })
	hl(0, 'FlashCursor', { foreground = '#ffffff', background = '#000000' })
end

vim.api.nvim_create_autocmd("colorscheme", { callback = apply_hl, })
