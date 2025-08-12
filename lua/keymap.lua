vim.keymap.set("i", "jj", "<Esc>")
-- Format whole file
vim.keymap.set("n", "<leader>cf", ":!clang-format -i %<CR>", { noremap = true, silent = true })

-- Format selected code
vim.keymap.set("v", "<leader>cf", ":!clang-format<CR>", { noremap = true, silent = true })
