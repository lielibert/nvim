vim.g.mapleader = " "

vim.loader.enable()
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.ttyfast = true
vim.opt.clipboard = "unnamedplus"
vim.opt.relativenumber = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.termguicolors = true
vim.opt.winbar = " "

-- Bootstrap lazy.nvim
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
	defaults = { lazy = true }, -- EVERYTHING lazy by default
	-- config file are in the plugin folder.
	require("plugins.bg"),
	require("plugins.base16-nvim"),
	require("plugins.snacks"),
	require("plugins.ensure"),
	require("plugins.nvim-treesitter"),
	require("plugins.mason"),
	require("plugins.nvim-lint"),
	require("plugins.blink"),
	require("plugins.nvim-lspconfig"),
	require("plugins.nvim-dap"),
	require("plugins.nvim-scissors"),
	require("plugins.diagflow"),
	require("plugins.noice"),
	require("plugins.multiplecursor"),
	require("plugins.indent-blankline"),
	require("plugins.lualine"),
	require("plugins.mini"),
	require("plugins.conform"),
	require("plugins.flash"),
	require("plugins.nvim-colorizer"),
	require("plugins.nvim-toggle"),
	require("plugins.nvim-transparent"),
	-- require("plugins.which-key"),
	-- require("plugins.copilot"), -- load when you want to use copilot
})

-- additional imports
require("config.themes")
require("config.keymaps")
require("config.commands")
require("config.macros")
