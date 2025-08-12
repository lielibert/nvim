return {

	{

		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		config = function()
			require("mason").setup()
		end

	},

	{
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
	},

	{
		"mfussenegger/nvim-dap",
		dependencies = {

			"rcarriga/nvim-dap-ui", -- Optional UI
			"theHamsta/nvim-dap-virtual-text" -- Inline variable text
		}
	},

	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end
	},
	

}
