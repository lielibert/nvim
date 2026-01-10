----------------------------------------------
-- change the leaderkey in the init.lua file
----------------------------------------------

-- disable the status bar of nvim  | if you don't use tmux you can comment the below line.
-- vim.o.laststatus = 0

key = vim.keymap.set
opts = { noremap = true, silent = true }
key("n", "<C-l>", ":noh<CR>", opts)
key("n", "<CR>", "o<Esc>", opts)
