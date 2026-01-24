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
cmd("CCPP", function()
	local source = vim.fn.input("Enter source path", vim.fn.getcwd() .. "/", "dir")
	local build = vim.fn.input("Enter build path", vim.fn.getcwd() .. "/", "dir")

	if source == "" or build == "" then
		return
	end
	local command = string.format(
		[[
	kitty bash -c "cmake -S %s -B %s; echo 'Config Completed, press q to exit'; read -n 1 -s q;" /dev/null
	]],
		source,
		build
	)
	os.execute(command)
end, {})

cmd("BCPP", function()
	local full_path = vim.api.nvim_buf_get_name(0)
	local build = vim.fn.input("Enter build path", vim.fn.getcwd() .. "/", "file")
	if full_path == "" or build == "" then
		return
	end
	local command = string.format(
		[[
	kitty bash -c "g++ %s -o %s; echo 'build Completed, press q to exit'; read -n 1 -s q;" &> /dev/null
	]],
		full_path,
		build
	)
	os.execute(command)
end, {})

cmd("RCPP", function()
	local path = vim.fn.input("Enter the exe file path", vim.fn.getcwd() .. "/", "file")
	if path == "" then
		return
	end
	local command = string.format(
		[[
	kitty bash -c "%s; echo 'Completed, press q to exit'; read -n 1 -s q;" &> /dev/null
	]],
		path
	)
	os.execute(command)
end, {})

cmd("RT", function()
	MiniTrailspace.trim()
end, {})

cmd("RLT", function()
	MiniTrailspace.trim_last_lines()
end, {})
