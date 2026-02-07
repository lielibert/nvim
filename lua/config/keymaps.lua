-- Change the leaderkey in the init.lua file

local key = vim.keymap.set
key("n", "<leader>so", ":so<CR>", { noremap = true, silent = true, desc = "source nvim config" })
key("n", "<C-h>", ":noh<CR>", { noremap = true, silent = true, desc = "clear hl" })
key("i", "<C-f>", "<Esc>la", { noremap = true, silent = true, desc = "next character" })
key("i", "<C-b>", "<Esc>i", { noremap = true, silent = true, desc = "next character" })
key("n", "<CR>", "o<Esc>", { noremap = true, silent = true, desc = "create line" })
key("n", "<g;>", "$a;<Esc>", { noremap = true, silent = true, desc = "add ; to end" })
key({ "n", "x", "v" }, "<leader>y", '"+y', { noremap = true, silent = true, desc = "copy to clipboard" })
key({ "n", "x", "v" }, "<leader>p", '"+p', { noremap = true, silent = true, desc = "copy to clipboard" })
key({ "n", "x", "v" }, "<leader>c", '"+d', { noremap = true, silent = true, desc = "cut to clipboard" })
key({ "n", "i" }, "<C-'>", "<Esc>:s/;$//<CR>", { noremap = true, silent = true, desc = "remove ; from end" })
key(
	"n",
	"<leader>t",
	":TransparentToggle<CR>",
	{ noremap = true, silent = true, desc = "toggle transparent colorscheme" }
)
key("n", "<C-k>", vim.lsp.buf.signature_help, { noremap = true, silent = true, desc = "remove ; from end" })
