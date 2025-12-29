local C = require("base16-colorscheme").colors
local hl = vim.api.nvim_set_hl

hl(0, "TSComment", { fg = "#909090", italic = true })

-- highlight group for blink
hl(0, "BlinkCmpMenu", { fg = C.base00 })
hl(0, "BlinkCmpMenuBorder", { fg = "#707070" })
hl(0, "BlinkCmpMenuSelection", { fg = "#ffffff", bg = C.base0D })
hl(0, "BlinkCmpScrollBarThumb", { fg = C.base00, bg = C.base00 })
hl(0, "BlinkCmpScrollBarGutter", { fg = C.base00, bg = C.base00 })
hl(0, "BlinkCmpLabel", { fg = "#909090", bg = C.base00 })
hl(0, "BlinkCmpLabelDeprecated", { fg = "#909090", bg = C.base00 })
hl(0, "BlinkCmpLabelDescription", { fg = "#909090", bg = C.base00 })
hl(0, "BlinkCmpKind", { fg = "#ffffff", bg = C.base00 })
hl(0, "BlinkCmpSource", { fg = "#ffffff", bg = C.base00 })

-- highlight groups for diagflow
hl(0, "DiagflowNormal", { fg = C.base05, bg = C.base01 })
hl(0, "DiagflowBorder", { fg = C.base03, bg = C.base01 })
hl(0, "DiagflowError", { fg = C.base08 })
hl(0, "DiagflowWarn", { fg = C.base09 })
hl(0, "DiagflowInfo", { fg = C.base0C })
hl(0, "DiagflowHint", { fg = C.base0B })
hl(0, "DiagflowSource", { fg = C.base04 })
hl(0, "DiagflowCode", { fg = C.base0D })

hl(0, "FlashLabel", { fg = "#ffffff", bg = "#ff0000" })
hl(0, "FlashLabelPrimary", { fg = "#000000", bg = "#ffff00" })
hl(0, "FlashLabelSecondary", { fg = "#cccccc", bg = "#444444" })
hl(0, "FlashCurrent", { fg = "#ffffff", bg = "#0077ff" })
hl(0, "FlashMatch", { fg = "#ffffff", bg = "#333333" })
