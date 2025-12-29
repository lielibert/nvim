----------------------------------------------
-- change the leaderkey in the init.lua file
----------------------------------------------

vim.opt.clipboard = "unnamedplus"
vim.opt.relativenumber = true

vim.bo.modifiable = true
vim.o.wrap = true
vim.o.linebreak = true
vim.o.breakat = " \t;:,!?"

-- disable the status bar of nvim  | if you don't use tmux you can comment the below line.
-- vim.o.laststatus = 0

-- keymap config
local wk = require("which-key")
wk.add({
	{
		{ "<leader>j", ":m .+1<CR>==", mode = "n" },
		{ "<leader>k", ":m .-2<CR>==", mode = "n" },
		{ "<leader>k", ":m '<-2<CR>gv", mode = "v" },
		{ "<leader>j", ":m '>+1<CR>gv", mode = "v" },
	},
	{
		{ "<CR>", "o<Esc>", mode = "n" },
	},
	{
		{ "<C-l>", ":noh<CR>", mode = "n" },
	},
}, { noremap = true, silent = true })
