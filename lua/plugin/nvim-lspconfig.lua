return {
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")

			-- Setup clangd
			lspconfig.clangd.setup {
				cmd = { "clangd" }, -- path to clangd binary
				filetypes = { "c", "cpp", "objc", "objcpp" },
				root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
			}
		end
	}
