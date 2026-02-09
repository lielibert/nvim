-- Change the leaderkey in the init.lua file

local key = vim.keymap.set
local autocmd = vim.api.nvim_create_autocmd

key("n", "<leader>so", ":so<CR>", { silent = true, desc = "source nvim config" })
key("n", "<leader>w", ":w<CR>", { silent = true, desc = "write file" })
key("n", "<leader>l", ":Lazy<CR>", { silent = true, desc = "write file" })
key("n", "<leader>m", ":Mason<CR>", { silent = true, desc = "write file" })
key("n", "<C-h>", ":noh<CR>", { silent = true, desc = "clear hl" })
key("i", "<C-f>", "<Esc>la", { silent = true, desc = "next character" })
key("i", "<C-b>", "<Esc>i", { silent = true, desc = "next character" })
key("n", "<CR>", "o<Esc>", { silent = true, desc = "create line" })
key("n", "g;", "$a;<Esc>", { silent = true, desc = "add ; to end" })
key("n", "g:", "$a:<Esc>", { silent = true, desc = "add ; to end" })
key("n", "g,", "$a,<Esc>", { silent = true, desc = "add ; to end" })
key({ "n", "x", "v" }, "<leader>y", '"+y', { silent = true, desc = "copy to clipboard" })
key({ "n", "x", "v" }, "<leader>p", '"+p', { silent = true, desc = "copy to clipboard" })
key({ "n", "x", "v" }, "<leader>P", '"+P', { silent = true, desc = "copy to clipboard" })
key({ "n", "x", "v" }, "<leader>gp", '"+gp', { silent = true, desc = "copy to clipboard" })
key({ "n", "x", "v" }, "<leader>c", '"+d', { silent = true, desc = "cut to clipboard" })
key("n", "<leader>t", ":TransparentToggle<CR>", { silent = true, desc = "toggle transparent colorscheme" })
key("n", "<C-k>", vim.lsp.buf.signature_help, { silent = true, desc = "remove ; from end" })
key("n", "<leader>fm", function() vim.lsp.buf.format({ async = true }) end, { desc = "format whole file" })
key("n", "<leader>e", ":lua MiniFiles.open()<CR>", { silent = true, desc = "file explorer", })
