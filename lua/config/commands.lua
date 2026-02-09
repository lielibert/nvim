local autocmd = vim.api.nvim_create_autocmd
local cmd = vim.api.nvim_create_user_command

-- AUTOCOMMAND
autocmd({ "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
	end,
})
autocmd("InsertEnter", {
	callback = function()
		vim.opt.number = true
		vim.opt.relativenumber = false
	end,
})

autocmd("InsertLeave", {
	callback = function()
		vim.opt.number = false
		vim.opt.relativenumber = true
	end,
})

-- USER COMMAND
cmd("RT",":lua MiniTrailspace.trim()<CR>", {})
cmd("RLT",":lua MiniTrailspace.trim_last_lines()<CR>", {})
