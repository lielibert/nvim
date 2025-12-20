return {

	"RRethy/base16-nvim",
	config = function()
		local function source_matugen()
			local matugen_path = os.getenv("HOME") .. "/.config/nvim/lua/plugins/generated.lua"

			local file, err = io.open(matugen_path, "r")
			if err ~= nil then
				vim.cmd("colorscheme base16-catppuccin-mocha")
				vim.print("A matugen style file was not found ! default colorscheme will be used !")
			else
				dofile(matugen_path)
				io.close(file)
			end
		end

		local function auxiliary_function()
			local matugen_path = os.getenv("HOME") .. "/.config/nvim/lua/plugins/generated.lua"
			source_matugen()
			-- dofile(os.getenv("HOME") .. "/.config/nvim/lua/plugins/lualine.lua")
			dofile(os.getenv("HOME") .. "/.config/nvim/lua/plugins/hlgroups.lua")
		end

		-- Register an autocmd to listen for matugen updates
		vim.api.nvim_create_autocmd("Signal", {
			pattern = "SIGUSR1",
			callback = auxiliary_function,
		})

		auxiliary_function()
	end,
}
