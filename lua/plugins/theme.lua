local hl = vim.api.nvim_set_hl
local C = require("base16-colorscheme").colors

local apply_hl = function()
	-- highlight group for flash
	hl(0, "FlashLabel", { fg = "#ffffff", bg = "#ff0000" })
	hl(0, "FlashLabelPrimary", { fg = "#000000", bg = "#ffff00" })
	hl(0, "FlashLabelSecondary", { fg = "#cccccc", bg = "#444444" })
	hl(0, "FlashCurrent", { fg = "#ffffff", bg = "#0077ff" })
	hl(0, "FlashMatch", { fg = "#ffffff", bg = "#333333" })

	-- highlight group for blink
	hl(0, "BlinkCmpMenu", { fg = "NONE", bg = "NONE" })
	hl(0, "BlinkCmpMenu", { fg = "NONE", bg = "NONE" })
	hl(0, "BlinkCmpMenuBorder", { fg = "#707070" })
	hl(0, "BlinkCmpMenuSelection", { fg = "#ffffff", bg = "#808080" })
	hl(0, "BlinkCmpScrollBarThumb", { fg = "NONE", bg = "NONE" })
	hl(0, "BlinkCmpScrollBarGutter", { fg = "NONE", bg = "NONE" })
	hl(0, "BlinkCmpLabel", { fg = "#909090", bg = "NONE" })
	hl(0, "BlinkCmpLabelDetail", { fg = "#909090", bg = "NONE" })
	hl(0, "BlinkCmpLabelDeprecated", { fg = "#909090", bg = "NONE" })
	hl(0, "BlinkCmpLabelDescription", { fg = "#909090", bg = "NONE" })
	hl(0, "BlinkCmpKind", { fg = "#ffffff", bg = "NONE" })
	hl(0, "BlinkCmpSource", { fg = "#ffffff", bg = "NONE" })

	hl(0, "Pmenu", { fg = "NONE", bg = "NONE" })
end

vim.cmd.colorscheme("base16-tokyo-night-storm")
apply_hl()
vim.api.nvim_create_autocmd("colorscheme", {
	callback = apply_hl,
})
