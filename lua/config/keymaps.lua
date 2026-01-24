-- Change the leaderkey in the init.lua file

key = vim.keymap.set
opts = { noremap = true, silent = true }

key("n", "<C-l>", ":noh<CR>", opts)
key("n", "<leader>e", ":lua MiniFiles.open()<CR>", opts)
key("i", "<C-l>", "<Esc>la", opts)
key("n", "<CR>", "o<Esc>", opts)
key("i", "<C-CR>", "O", opts)
key("n", "<leader>t", ":TransparentToggle<CR>", opts)
key("n", "<leader>pc", function()
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
end, opts)

key("n", "<leader>gcc", function()
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
end, opts)

key("n", "<leader>R", function()
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
end, opts)
