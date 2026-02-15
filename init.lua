vim.g.mapleader = " " -- set leader key

vim.loader.enable() -- speeds up require()
vim.opt.ttyfast = true -- it tells that the terminal is fast
vim.opt.termguicolors = true -- true terminal colors
vim.opt.relativenumber = true -- for relativenumber
vim.opt.ignorecase = true -- ignore the case when searching
vim.opt.smartcase = true -- search become case sensitive when using capital letters
vim.opt.wrap = true -- wraping for long text
vim.opt.linebreak = true -- wrap lines at word boundaries
vim.opt.showbreak = "↳" -- prefix for wrapped lines
vim.opt.breakindent = true -- makes wrapped lines look neatly indented
vim.opt.signcolumn = "yes" -- always show sign column
vim.opt.winborder = "rounded"
vim.opt.swapfile = false -- disable swap-file
vim.opt.undofile = true
-- vim.opt.clipboard = "unnamedplus" -- for clipboard

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
	require("plugins.ensure"),
	require("plugins.blink"),
	require("plugins.mini"),
	require("plugins.git"),
	require("plugins.multiplecursor"),
	require("plugins.lualine"),
	require("plugins.nvim-colorizer"),
	require("plugins.dial"),
	require("plugins.rainbow-delimiters"),
	require("plugins.neogen"),
	-- require("plugins.copilot"), -- load when you want to use copilot
})

-- config files
require("config.hl")
require("config.lsp-config")
require("config.keymaps")
require("config.commands")
require("config.macros")
vim.cmd.colorscheme("base16-tokyo-night-storm")
