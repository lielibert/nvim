-- Change the leaderkey in the init.lua file

local key = vim.keymap.set
-- local autocmd = vim.api.nvim_create_autocmd

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
key({ "n", "x" }, "<leader>ca", function()
	require("tiny-code-action").code_action()
end, { noremap = true, silent = true })
