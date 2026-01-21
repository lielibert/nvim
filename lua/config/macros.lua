macro = vim.fn.setreg
macro_grp = vim.api.nvim_create_augroup
autocmd = vim.api.nvim_create_autocmd

macro_grp("cppmacro", { clear = true })
autocmd("FileType", {
	group = "cppmacro",
	pattern = { "cpp" },
	callback = function()
		macro("l", 'yostd::cout<<"pA<<pA<<"\\nA;')
	end,
})
