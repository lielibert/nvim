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

key = vim.keymap.set
opts = { noremap = true, silent = true }

key("n", "<leader>j", ":m .+1<CR>==", opts)
key("n", "<leader>k", ":m .-2<CR>==", opts)
key("x", "<leader>k", ":m '<-2<CR>gv", opts)
key("x", "<leader>j", ":m '>+1<CR>gv", opts)
key("n", "<CR>", "o<Esc>", opts)
key("n", "<C-l>", ":noh<CR>", opts)
