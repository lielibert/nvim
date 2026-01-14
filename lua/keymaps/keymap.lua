----------------------------------------------
-- change the leaderkey in the init.lua file
----------------------------------------------

-- disable the status bar of nvim  | if you don't use tmux you can comment the below line.
-- vim.o.laststatus = 0

key = vim.keymap.set
opts = { noremap = true, silent = true }
key("n", "<C-l>", ":noh<CR>", opts)
key("n", "<CR>", "o<Esc>", opts)

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
end)

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
end)

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
end)
