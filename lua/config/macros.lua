local macro = vim.fn.setreg
local macro_grp = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

macro_grp("cppmacro", { clear = true })
autocmd("FileType", {
	group = "cppmacro",
	pattern = { "cpp" },
	callback = function()
		macro("l", 'yostd::cout<<"pA<<pA<<"\\nA;')
	end,
})
