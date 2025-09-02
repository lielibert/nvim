return {

	{
		"dense-analysis/ale",
		config = function()
			-- ALE configuration goes here (see next section)
			-- Enable ALE
			vim.g.ale_enabled = 1
			vim.g.ale_lint_on_text_changed = "always"  -- lint as you type
			vim.g.ale_lint_on_insert_leave = 1         -- lint when leaving insert mode
			vim.g.ale_sign_column_always = 1           -- always show sign column
			-- vim.g.ale_virtualtext_cursor = 1           -- show errors under cursor

			-- Linters per filetype
			vim.g.ale_linters = {
				python = {"flake8"},
				javascript = {"eslint"},
				typescript = {"eslint"},
				lua = {"luacheck"},
				c = {"clang-tidy"},
				cpp = {"clang-tidy"},
				sh = {"shellcheck"},
				go = {"golangci-lint"},
				rust = {"cargo-clippy"},
			}

		-- Lint current buffer
			vim.keymap.set("n", "<leader>ll", ":ALELint<CR>", { noremap = true, silent = true })


		end,
	}

}
