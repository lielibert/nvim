autocmd = vim.api.nvim_create_autocmd
cmd = vim.api.nvim_create_user_command

-- AUTOCOMMAND
autocmd("InsertEnter", {
	callback = function()
		vim.opt.number = true
		vim.opt.relativenumber = false
	end,
})

autocmd("InsertLeave", {
	callback = function()
		vim.opt.relativenumber = true
	end,
})

-- USER COMMAND
cmd("RT", function()
	MiniTrailspace.trim()
end, {})

cmd("RLT", function()
	MiniTrailspace.trim_last_lines()
end, {})
