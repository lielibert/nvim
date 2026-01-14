vim.g.mapleader = " "

vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.ttyfast = true
vim.opt.clipboard = "unnamedplus"
vim.opt.relativenumber = true
vim.o.linebreak = true
vim.o.breakindent = true
vim.opt.termguicolors = true

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
	-- config file are in the plugin folder.
	require("plugins.bg"),
	require("plugins.base16-nvim"),
	require("plugins.snacks"),
	require("plugins.ensure"),
	require("plugins.nvim-treesitter"),
	require("plugins.mason"),
	require("plugins.linter"),
	require("plugins.blink"),
	require("plugins.nvim-lspconfig"),
	require("plugins.nvim-dap"),
	require("plugins.nvim-scissors"),
	require("plugins.diagflow"),
	require("plugins.noice"),
	require("plugins.multiplecursor"),
	require("plugins.indent-blankline"),
	require("plugins.lualine"),
	require("plugins.tabout"),
	require("plugins.mini"),
	require("plugins.conform"),
	require("plugins.flash"),
	require("plugins.nvim-colorizer"),
	-- require("plugins.which-key"),
	-- require("plugins.copilot"), -- load when you want to use copilot
})

-- additional imports
require("keymaps.keymap")
dofile(vim.fn.stdpath("config") .. "/lua/plugins/theme.lua")
