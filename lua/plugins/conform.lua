return {
	{
		"stevearc/conform.nvim",
		opts = {},
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					-- Conform will run multiple formatters sequentially
					python = { "isort", "black" },
					-- You can customize some of the format options for the filetype (:help conform.format)
					rust = { "rustfmt", lsp_format = "fallback" },
					-- Conform will run the first available formatter
					cpp = { "clang-format" },
					c = { "clang-format" },
					sh = { "shfmt" },
					latex = { "tex-fmt" },
					cmake = { "cmake-format" },
				},
				format_on_save = true,
				formatters = {
					clang_format = {
						prepend_args = { "--style=file" },
					},
				},
			})

			vim.keymap.set("n", "<leader>fm", function()
				require("conform").format({ async = true })
			end, { noremap = true, silent = true, desc = "Format Whole File" })
		end,
	},
}
