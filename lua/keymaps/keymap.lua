vim.opt.clipboard = "unnamedplus"
vim.opt.relativenumber = true

-- keymap config
local wk = require("which-key")
wk.add({
	{
		mode = { "n" },
		{"<leader>ww","<cmd>w<CR>", desc = "write"},
		{"<leader>wa","<cmd>wa<CR>", desc = "write"},
		{"<leader>qq","<cmd>q<cr>", desc = "quit"},
		{"<leader>qa","<cmd>qa<cr>", desc = "quit"},
		{"<leader>wq","<cmd>wq<cr>", desc = "write & quit"},
		{"<leader>Q","<cmd>qa!<cr>", desc = "force quit"},



	},
	{
		{ "<leader>j", ":m .+1<CR>==",mode = "n"},
		{ "<leader>k", ":m .-2<CR>==", mode = "n"},
		{ "<leader>k", ":m '<-2<CR>gv", mode = "v" },
		{ "<leader>j", ":m '>+1<CR>gv", mode = "v" },

		{ "<CR>" , "o<Esc>",mode="n"},
		{"<S-CR>", "O<Esc>", mode ="n"}
	},
	{
		{"<C-CR>" , "<C-o>j" , mode = "i"},
	}
} , {noremap=true , silent=true })
