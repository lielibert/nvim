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

-- Lua snippet for bg.nvim functionality
local api = vim.api

api.nvim_create_autocmd("UIEnter", {
	group = api.nvim_create_augroup("set_terminal_bg", {}),
	callback = function()
		local bg = api.nvim_get_hl_by_name("Normal", true)["background"]
		if not bg then
			return
		end
		local fmt = string.format

		if os.getenv("TMUX") then
			-- Send escape sequence to tmux to set background color
			bg = fmt("\x1bPtmux;\x1b\x1b]11;#%06x\x07\x1b\\", bg)
		else
			-- Send escape sequence directly to terminal
			bg = fmt("\x1b]11;#%06x\x07", bg)
		end

		os.execute(bg)
		return true
	end,
})

-- USER COMMAND
cmd("RT", function()
	MiniTrailspace.trim()
end, {})

cmd("RLT", function()
	MiniTrailspace.trim_last_lines()
end, {})
