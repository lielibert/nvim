-- Change the leaderkey in the init.lua file

local key = vim.keymap.set

key("n", "<C-l>", ":noh<CR>", { noremap = true, silent = true, desc = "clear hl" })
key("i", "<C-l>", "<Esc>la", { noremap = true, silent = true, desc = "next character" })
key("n", "<CR>", "o<Esc>", { noremap = true, silent = true, desc = "create line" })
key("n", "<C-;>", "$a;<Esc>", { noremap = true, silent = true, desc = "add ; to the end" })
key("i", "<C-;>", "$;", { noremap = true, silent = true, desc = "add ; to the end" })
key({ "n", "i" }, "<C-'>", "<Esc>:s/;$//<CR>", { noremap = true, silent = true, desc = "remove ; from the end" })
key(
	"n",
	"<leader>t",
	":TransparentToggle<CR>",
	{ noremap = true, silent = true, desc = "toggle transparent colorscheme" }
)

key("n", "<leader>dd", function()
	vim.diagnostic.enable(false)
end, { noremap = true, silent = true, desc = "remove diagnostic" })
