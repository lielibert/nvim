-- Set leader key early
vim.g.mapleader = " "

vim.bo.modifiable = true

local opts = { noremap = true, silent = true }

-- disable the status bar of nvim  | if you don't use tmux you can comment the below line.
-- vim.o.laststatus=0
-- Bootstrap lazy.nvim if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Setup plugins
require("lazy").setup({
	-- config file are in the plugin folder.
	require("plugins.tokyonight"),
	require("plugins.barbar"),
	require("plugins.snacks"),
	require("plugins.mason"),
	require("plugins.nvim-treesitter"),
	require("plugins.noice"),
	require("plugins.better-escape"),
	require("plugins.flash"),
	require("plugins.nvim-surround"),
	require("plugins.tabout"),
	require("plugins.multiplecursor"),
	require("plugins.nvim-lint"),
	require("plugins.rainbow-delimiters"),
	require("plugins.which-key"),
	require("plugins.indent-blankline"),
	require("plugins.comment"),
	require("plugins.nvim-autopairs"),
	require("plugins.blink"),
	require("plugins.diagflow"),
	require("plugins.lualine"),
	require("plugins.nvim-dap"),

	-- require("plugins.copilot"), -- load when you want to use copilot
})

-- Setup keymap
require("keymaps.keymap")

