-- Change the leaderkey in the init.lua file

local key = vim.keymap.set
-- local autocmd = vim.api.nvim_create_autocmd

key("i", "<C-d>", "x", { silent = true, desc = "delete forward" })
key("i", "<C-f>", "a", { silent = true, desc = "next character" })
key("i", "<C-b>", "i", { silent = true, desc = "previous character" })
key("n", "<C-d>", "<C-d>zz", { silent = true, desc = "center, down" })
key("n", "<C-u>", "<C-u>zz", { silent = true, desc = "center, up" })
key("n", "gfm", vim.lsp.buf.format, { desc = "format whole file" })
key("n", "<leader>w", ":w<CR>", { silent = true, desc = "write file" })
key("n", "<leader>l", ":Lazy<CR>", { silent = true, desc = "write file" })
key("n", "<leader>m", ":Mason<CR>", { silent = true, desc = "write file" })
key("n", "<leader>t", ":TransparentToggle<CR>", { silent = true, desc = "toggle transparent colorscheme" })
key("n", "<leader>e", function()
	if not MiniFiles.close() then MiniFiles.open() end
end, { silent = true, desc = "file explorer", })
key({ "n", "x", "v" }, "<leader>y", '"+y', { silent = true, desc = "copy to clipboard" })
key({ "n", "x", "v" }, "<leader>p", '"+p', { silent = true, desc = "paste from clipboard" })
key({ "n", "x", "v" }, "<leader>P", '"+P', { silent = true, desc = "paste from clipboard" })
key({ "n", "x", "v" }, "<leader>]P", '"+]P', { silent = true, desc = "paste from clipboard" })
key({ "n", "x", "v" }, "<leader>gp", '"+gp', { silent = true, desc = "copy to clipboard" })
key({ "n", "x", "v" }, "<leader>d", '"+d', { silent = true, desc = "cut to clipboard" })
key({ "n", "i" }, "<C-k>", vim.lsp.buf.signature_help, { silent = true, desc = "show signature" })
key("n", "<leader>se", function() require("scissors").editSnippet() end, { desc = "Snippet: Edit" })
key({ "n", "x" }, "<leader>sa", function() require("scissors").addNewSnippet() end, { desc = "Snippet: Add" })
