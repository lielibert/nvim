vim.opt.clipboard = "unnamedplus"
vim.opt.relativenumber = true

-- Insert mode mapping
vim.keymap.set({ "i" }, "<C-;>", "<C-o>A;<CR>", { noremap = true, silent = true })
vim.keymap.set({ "n" }, "<C-;>", "A;<Esc>", { noremap = true, silent = true })

-- keymap config
local wk = require("which-key")
wk.add({
	{
		{ "<leader>j", ":m .+1<CR>==", mode = "n" },
		{ "<leader>k", ":m .-2<CR>==", mode = "n" },
		{ "<leader>k", ":m '<-2<CR>gv", mode = "v" },
		{ "<leader>j", ":m '>+1<CR>gv", mode = "v" },

		{ "<CR>", "I<CR><Esc>", mode = "n" },
	},
	{
		{ "<C-CR>", "<C-o>o", mode = "i" },
		{ "<C-S-CR>", "<C-o>O", mode = "i" },
		{ "<C-l>", "<C-o>l", mode = { "n", "i" } },
	},
}, { noremap = true, silent = true })
