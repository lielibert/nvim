-- keymap config 

vim.keymap.set("i", "jj", "<Esc>")

vim.opt.relativenumber = true
-- for moving line 
vim.keymap.set("n", "<leader>j" , ":m .+1<CR>==", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>k" , ":m .-2<CR>==", { noremap = true, silent = true })
vim.keymap.set("v", "<leader>k", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "<leader>j", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })

