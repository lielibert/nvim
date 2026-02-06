vim.g.mapleader = " " -- Set mapleader

vim.loader.enable() -- Speeds up require() by caching compiled Lua bytecode
vim.opt.termguicolors = true -- True terminal colors
vim.opt.clipboard = "unnamedplus" -- For clipboard
vim.opt.relativenumber = true -- For relativenumber
vim.opt.showmatch = false -- Briefly jumps to the matching bracket when you type ) ] or }
vim.opt.ignorecase = true -- Ignore the case when searching
vim.opt.smartcase = true -- search become case sensitive when using capital letters
vim.opt.ttyfast = true -- It tells that the terminal is fast, so it can optimize screen redraws.
vim.opt.wrap = true -- Wraping for long text
vim.opt.linebreak = true -- Wrap lines at word boundaries instead of cutting words mid-way
vim.opt.showbreak = "↳" -- Prefix for wrapped lines
vim.opt.breakindent = true -- Makes wrapped lines look neatly indented

-- Comment out the winbar section in lualine for this to work
-- vim.opt.winbar = " " -- for adding some space at the top

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

	-- EVERYTHING lazy by default
	defaults = { lazy = true },

	-- config file are in the plugin folder.
	require("plugins.base16-nvim"),
	require("plugins.snacks"),
	require("plugins.noice"),
	require("plugins.nvim-treesitter"),
	require("plugins.mason"),
	require("plugins.ensure"),
	require("plugins.nvim-lspconfig"),
	require("plugins.blink"),
	require("plugins.conform"),
	require("plugins.nvim-lint"),
	require("plugins.nvim-dap"),
	require("plugins.mini"),
	require("plugins.diagflow"),
	require("plugins.multiplecursor"),
	require("plugins.lualine"),
	require("plugins.nvim-scissors"),
	require("plugins.nvim-colorizer"),
	require("plugins.nvim-toggle"),
	require("plugins.dial"),
	require("plugins.plenary"),
	require("plugins.neogen"),
	require("plugins.rainbow-delimiters"),
	require("plugins.nvim-transparent"),
	require("plugins.which-key"),
	-- require("plugins.copilot"), -- load when you want to use copilot

	require("plugins.custom"), -- bring your own plugins
})

-- additional imports
require("config.themes")
require("config.keymaps")
require("config.commands")
require("config.macros")
