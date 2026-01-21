local hl = vim.api.nvim_set_hl

apply_hl = function()
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

	-- Flash.nvim highlights
	hl(0, "FlashLabel", {
		fg = "#ffffff",
		bg = "#ff007c",
		bold = true,
	})

	hl(0, "FlashMatch", {
		fg = "#ff007c",
		bold = true,
	})

	hl(0, "FlashCurrent", {
		fg = "#ffffff",
		bg = "#5f00ff",
		bold = true,
	})

	hl(0, "FlashBackdrop", {
		fg = "#545c7e",
	})
end

vim.api.nvim_create_autocmd("colorscheme", {
	callback = apply_hl,
})

vim.cmd.colorscheme("base16-tokyo-night-storm")
