-- Change the leaderkey in the init.lua file

local key = vim.keymap.set
local autocmd = vim.api.nvim_create_autocmd

key("n", "<CR>", "o<Esc>", { silent = true, desc = "create line" })
key("n", "g;", "$a;<Esc>", { silent = true, desc = "add ; to end" })
key("n", "g:", "$a:<Esc>", { silent = true, desc = "add : to end" })
key("n", "g,", "$a,<Esc>", { silent = true, desc = "add , to end" })
key("n", "g.", "$a,<Esc>", { silent = true, desc = "add . to end" })
key("n", "gfm", vim.lsp.buf.format, { desc = "format whole file" })
key({ "n", "x", "v" }, "<leader>y", '"+y', { silent = true, desc = "copy to clipboard" })
key({ "n", "x", "v" }, "<leader>p", '"+p', { silent = true, desc = "paste from clipboard" })
key({ "n", "x", "v" }, "<leader>P", '"+P', { silent = true, desc = "paste from clipboard" })
key({ "n", "x", "v" }, "<leader>]P", '"+]P', { silent = true, desc = "paste from clipboard" })
key({ "n", "x", "v" }, "<leader>gp", '"+gp', { silent = true, desc = "copy to clipboard" })
key({ "n", "x", "v" }, "<leader>d", '"+d', { silent = true, desc = "cut to clipboard" })
key("i", "<C-f>", "<Esc>la", { silent = true, desc = "next character" })
key("i", "<C-b>", "<Esc>i", { silent = true, desc = "next character" })
key({ "n", "i" }, "<C-k>", vim.lsp.buf.signature_help, { silent = true, desc = "show signature" })
key("n", "<leader>w", ":w<CR>", { silent = true, desc = "write file" })
key("n", "<leader>l", ":Lazy<CR>", { silent = true, desc = "write file" })
key("n", "<leader>m", ":Mason<CR>", { silent = true, desc = "write file" })
key("n", "<leader>t", ":TransparentToggle<CR>", { silent = true, desc = "toggle transparent colorscheme" })
key("n", "<leader>e", ":lua MiniFiles.open()<CR>", { silent = true, desc = "file explorer", })
