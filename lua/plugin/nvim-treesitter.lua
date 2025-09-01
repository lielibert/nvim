return 	
	{
		{
			"nvim-treesitter/nvim-treesitter",
			event = "VimInsert",
			build = ":TSUpdate",        -- update parsers after install
			config = function()
				require("nvim-treesitter.configs").setup {

					-- Only install parsers for specific languages
					ensure_installed = { "c", "cpp", "python", "lua", "javascript" },

					-- Automatically install missing parsers when entering buffer
					auto_install = true,
					highlight = { enable = true,  additional_vim_regex_highlighting = false, },
					indent = { enable = true },
				}
			end
		},
		{
			"nvim-treesitter/nvim-treesitter-textobjects",
			event = "VeryLazy",
			dependencies = { "nvim-treesitter/nvim-treesitter" },
			config = function()
				require("nvim-treesitter.configs").setup {
					textobjects = {
						select = {
							enable = true,
							keymaps = {
								["af"] = "@function.outer",
								["if"] = "@function.inner",
								["ac"] = "@class.outer",
								["ic"] = "@class.inner",
								["ab"] = "@block.outer",
								["ib"] = "@block.inner",
							},
						},
					},
				}
			end
		}
	}
