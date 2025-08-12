-- Set leader key early
vim.g.mapleader = " "

-- Bootstrap lazy.nvim
dofile("/home/last/.config/nvim/lua/lazy.lua")

-- Setup plugins
require("lazy").setup(require("plugins"))

-- loarding custom keys
require("keymap")

-- setting the nvim 
vim.opt.relativenumber = true
vim.cmd.colorscheme("tokyonight-moon")


