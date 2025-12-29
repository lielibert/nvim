-- Set leader key early
vim.g.mapleader = " "

vim.o.ignorecase = true
vim.o.smartcase = true

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
	require("plugins.base16-nvim"),
	require("plugins.snacks"),
	require("plugins.nvim-treesitter"),
	require("plugins.mason"),
	require("plugins.linter"), -- after mason is required
	require("plugins.nvim-lspconfig"),
	require("plugins.nvim-dap"),
	require("plugins.conform"),
	require("plugins.blink"),
	require("plugins.nvim-scissors"),
	require("plugins.diagflow"),
	require("plugins.noice"),
	require("plugins.flash"),
	require("plugins.nvim-surround"),
	require("plugins.multiplecursor"),
	require("plugins.indent-blankline"),
	require("plugins.nvim-autopairs"),
	require("plugins.lualine"),
	require("plugins.tabout"),
	require("plugins.comment"),
	require("plugins.which-key"),
	-- require("plugins.copilot"), -- load when you want to use copilot
})

-- Setup keymap
require("keymaps.keymap")
