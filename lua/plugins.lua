return {
	"nvim-lua/plenary.nvim", -- example plugin
	"nvim-telescope/telescope.nvim",
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
	},
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		config = function()
			require("mason").setup()
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

	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup({})
		end,
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
		"abecodes/tabout.nvim",
		event = "InsertEnter",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-cmp", -- optional, for completion integration
		},
		config = function()
			require("tabout").setup({
				tabkey = "<Tab>",        -- key to trigger tabout
				backwards_tabkey = "<S-Tab>", -- key to go backwards
				act_as_tab = true,       -- when true, will still insert a tab if nothing to jump
				act_as_shift_tab = true, -- shift tab behaves as expected
				enable_backwards = true,
				completion = true,       -- integrate with nvim-cmp
				ignore_beginning = true,
				exclude = {},            -- filetypes to exclude
			})
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup {}
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					theme = "tokyonight", -- matches your tokyonight-moon colorscheme
					section_separators = { left = "", right = "" },
					component_separators = { left = "", right = "" },
				},
			})
		end
	},
	{
		'numToStr/Comment.nvim',
		opts = {
			-- add any options here
		}
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "cpp", "c", "lua", "python" }, -- Add languages here
				highlight = {
					enable = true,              -- Enable syntax highlighting
					additional_vim_regex_highlighting = true, -- Turn off old regex highlighting
				},
			})
		end,	},
	{
		"kylechui/nvim-surround",
		version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmp
			"hrsh7th/cmp-buffer",   -- Buffer completions
			"hrsh7th/cmp-path",     -- Path completions
			"L3MON4D3/LuaSnip",     -- Snippet engine
		},
		config = function()
			local cmp = require("cmp")

			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }), -- Enter to confirm
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
				}, {
					{ name = "buffer" },
					{ name = "path" },
				})
			})
		end,
	}


}
