vim.keymap.set("i", "jj", "<Esc>")
-- Format whole file
vim.keymap.set("n", "<leader>cf", ":!clang-format -i %<CR>", { noremap = true, silent = true })

-- Format selected code
vim.keymap.set("v", "<leader>cf", ":!clang-format<CR>", { noremap = true, silent = true })
 


-- for moving line 
vim.keymap.set("n", "<leader>j" , ":m .+1<CR>==", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>k" , ":m .-2<CR>==", { noremap = true, silent = true })

vim.keymap.set("v", "<leader>k", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "<leader>j", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })



vim.api.nvim_set_keymap("n", "<leader>cc",
    ":!cmake -S . -B build -G Ninja -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ",
    { noremap = true, silent = true })

