return {
	{
		"stevearc/conform.nvim",
		dependencies = { "mason.nvim" },
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					javascript = { "prettier" },
					typescript = { "prettier" },
					python = { "black" },
					sh = { "shfmt" },
					c = { "clang-format" },
					cc = { "clang-format" },
					cpp = { "clang-format" },
					java = { "google-java-format" },
					go = { "gofmt" },
					rust = { "rustfmt" },
					html = { "prettier" },
					css = { "prettier" },
					json = { "prettier" },
					yaml = { "prettier" },
				},
			})
			vim.keymap.set("n", "<leader>fm", function()
				require("conform").format({ async = true })
			end, { noremap = true, silent = true })
		end,
	},
}
