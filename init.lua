vim.g.mapleader = " " -- set mapleader

vim.loader.enable() -- speeds up require() by caching compiled Lua bytecode
vim.opt.termguicolors = true -- true terminal colors
vim.opt.clipboard = "unnamedplus" -- for clipboard
vim.opt.relativenumber = true -- for relativenumber
vim.opt.showmatch = false -- briefly jumps to the matching bracket when you type ) ] or }
vim.opt.ignorecase = true -- ignore the case when searching
vim.opt.smartcase = true -- search become case sensitive when using capital letters
vim.opt.ttyfast = true -- it tells that the terminal is fast, so it can optimize screen redraws.
vim.opt.wrap = true -- wraping for long text
vim.opt.linebreak = true -- wrap lines at word boundaries instead of cutting words mid-way
vim.opt.showbreak = "↳" -- prefix for wrapped lines
vim.opt.breakindent = true -- makes wrapped lines look neatly indented
vim.opt.signcolumn = "yes" -- always show sign column

-- to use custom plugins add them in the custom-plugins file in the custom folder
package.path = package.path .. ";" .. vim.fn.stdpath("config") .. "/custom/?.lua"
local Pstatus, Presult = pcall(require, "custom-plugins") -- bring your own plugins
if not Pstatus or type(Presult) == "boolean" and Presult then
	Presult = {}
end

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

	-- everything lazy by default
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
	require("plugins.flash"),
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
	Presult, -- custom plugin
})

-- additional imports
require("config.themes")
require("config.keymaps")
require("config.commands")
require("config.macros")

-- customize your keymaps, command, macro etc
-- edit the custom-config file in the custom folder
pcall(require, "custom-config")
