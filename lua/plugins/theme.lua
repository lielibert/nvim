local hl = vim.api.nvim_set_hl
local C = require("base16-colorscheme").colors

local apply_hl = function()
	-- highlight group for blink
	hl(0, "BlinkCmpMenu", { fg = "#ffffff", bg = "NONE" })
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
end

vim.cmd.colorscheme("base16-tokyo-night-storm")
apply_hl()
vim.api.nvim_create_autocmd("colorscheme", {
	callback = apply_hl,
})
