return {

	{

		"williamboman/mason.nvim",
		event = "VeryLazy",
		build = ":MasonUpdate",
		config = function()
			require("mason").setup()
		end

	},


	{
		"neovim/nvim-lspconfig",
		event = "VeryLazy",
		config = function()

			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			-- HTML
			lspconfig.html.setup{capabilities = capabilities,}

			-- CSS
			lspconfig.cssls.setup{capabilities = capabilities,}

			-- JavaScript / TypeScript
			lspconfig.volar.setup{
				capabilities = capabilities,
				filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" }
			}
			lspconfig.texlab.setup {
				capabilities = capabilities,
				settings = {
					texlab = {
						build = {
							executable = "latexmk",
							args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
							onSave = true,
						},
						forwardSearch = {
							executable = "zathura",
							args = { "--synctex-forward", "%l:1:%f", "%p" },
						},
					},
				},
			}

			lspconfig.pyright.setup{
				capabilities = capabilities,
				on_attach = function(client, bufnr)
					print("LSP attached for Python")
				end,
			}

			lspconfig.clangd.setup({
				capabilities = capabilities,

				cmd = {"clangd",
					"--background-index",
					"--clang-tidy",
					"--header-insertion=never",
					"--compile-commands-dir=build"}, -- path to clangd binary
				filetypes = { "c", "cpp", "objc", "objcpp" },
				root_dir = lspconfig.util.root_pattern("CMakeLists.txt",".git", "compile_flags.txt","compile_commands.json" ),
			})
			lspconfig.neocmake.setup({
				on_attach = function(client, bufnr)
					-- your on_attach settings
				end,
				capabilities = require("cmp_nvim_lsp").default_capabilities()
			})
			vim.keymap.set("n", "<leader>[", vim.diagnostic.open_float, { noremap = true, silent = true })
		end,

	},

	{
		"mfussenegger/nvim-dap",
		event = "VeryLazy",
		dependencies = {

			"rcarriga/nvim-dap-ui", -- Optional UI
			"nvim-neotest/nvim-nio",
			"theHamsta/nvim-dap-virtual-text" -- Inline variable text
		},
		config = function()

			local dap = require("dap")
			local dapui =  require("dapui")
			dapui.setup()

			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end			

			dap.adapters.gdb = {
				type = "executable",
				command = "/bin/gdb",
				args = { "--interpreter=dap", "--eval-command", "set print pretty on" }
			}

			dap.configurations.c = {
				{
					name = "Launch",
					type = "gdb",
					request = "launch",

					program = function()
						return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
					end,
					cwd = "${workspaceFolder}",
					stopOnEntry = false,
					args = {},
				},
				{
					name = "Select and attach to process",
					type = "gdb",
					request = "attach",
					program = function()
						return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
					end,
					pid = function()
						local name = vim.fn.input('Executable name (filter): ')
						return require("dap.utils").pick_process({ filter = name })
					end,
					cwd = '${workspaceFolder}'
				},
				{
					name = 'Attach to gdbserver :1234',
					type = 'gdb',
					request = 'attach',
					target = 'localhost:1234',
					program = function()
						return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
					end,
					cwd = '${workspaceFolder}'
				},
			}
			dap.configurations.cpp = dap.configurations.c
			dap.configurations.rust = dap.configurations.c
			-- Keymaps for nvim-dap
			vim.keymap.set("n", "<F5>", dap.continue, { desc = "DAP Continue/Start" })
			vim.keymap.set("n", "<learder>so", dap.step_over, { desc = "DAP Step Over" })
			vim.keymap.set("n", "<leader>si", dap.step_into, { desc = "DAP Step Into" })
			vim.keymap.set("n", "<leader>so", dap.step_out, { desc = "DAP Step Out" })

			vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "DAP Toggle Breakpoint" })
			vim.keymap.set("n", "<leader>dB", function()
				dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
			end, { desc = "DAP Conditional Breakpoint" })

			vim.keymap.set("n", "<leader>dl", function()
				dap.set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
			end, { desc = "DAP Log Point" })

			vim.keymap.set("n", "<leader>dr", dap.repl.open, { desc = "DAP Open REPL" })
			vim.keymap.set("n", "<leader>dq", dap.terminate, { desc = "DAP Terminate" })
			vim.keymap.set("n", "<leader>dp", dap.pause, { desc = "DAP Pause" })

		end,

	},



}
