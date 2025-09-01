-- Set leader key early
vim.g.mapleader = " "

-- Bootstrap lazy.nvim
dofile("/home/last/.config/nvim/lua/lazy.lua")

-- Setup plugins
require("lazy").setup(require("config"))

-- Setup keymap
require("keymap")

