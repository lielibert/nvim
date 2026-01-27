-- Change the leaderkey in the init.lua file

key = vim.keymap.set
opts = { noremap = true, silent = true }

key("n", "<C-l>", ":noh<CR>", opts)
key("i", "<C-l>", "<Esc>la", opts)
key("n", "<CR>", "o<Esc>", opts)
key("n", "<C-;>", "$a;<Esc>", opts)
key("i", "<C-;>", "$;", opts)
key("n", "<leader>t", ":TransparentToggle<CR>", opts)

key({ "i", "n" }, "<C-k>", function()
	require("noice.lsp").signature()
end, { desc = "Signature Help" })

key("n", "<leader>e", function()
	MiniFiles.open()
end, opts)

key("i", "<C-n>", function()
	require("neogen").jump_next()
end, opts)

key("i", "<C-p>", function()
	require("neogen").jump_prev()
end, opts)
