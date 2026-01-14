return {
	{
		"stevearc/conform.nvim",
		opts = {},
		config = function()
			require("conform").setup({
				-- Conform will run multiple formatters sequentially
				formatters_by_ft = {
					lua = { "stylua" },
					sh = { "beautysh" },
					c = { "clang-format" },
					cpp = { "clang-format" },
					cmake = { "cmakelang" },
					-- rust = { "rustfmt", lsp_format = "fallback" },
					python = { "black" },
					latex = { "tex-fmt" },
					-- Webdevelopment
					html = { "prettierd" },
					css = { "prettierd" },
					javascript = { "prettierd" },
					typescript = { "prettierd" },
					vue = { "prettierd" },
					svelte = { "prettierd" },
					scss = { "prettierd" },
					json = { "prettierd" },
					yaml = { "prettierd" },
					markdown = { "prettierd" },
				},
				format_on_save = true,
			})

			vim.keymap.set("n", "<leader>fm", function()
				require("conform").format({ async = true })
			end, { noremap = true, silent = true, desc = "Format Whole File" })
		end,
	},
}
