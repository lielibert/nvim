return {

  -- Gitsigns
  {
	  "lewis6991/gitsigns.nvim",
	  lazy = true,  -- don't load on startup
	  event = "InsertEnter",  -- load when you enter insert mode

	  dependencies = { "nvim-lua/plenary.nvim" },
	  event = { "BufReadPre", "BufNewFile" },
	  config = function()
		  require("gitsigns").setup {
			  signs = {
				  add          = { text = "+" },
				  change       = { text = "~" },
				  delete       = { text = "_" },
				  topdelete    = { text = "‾" },
				  changedelete = { text = "~" },
			  },
			  current_line_blame = true, -- Toggle with :Gitsigns toggle_current_line_blame
		  }
	  end,
  },

  -- Lazygit
  {
	  "kdheepak/lazygit.nvim",
	  lazy = true,  -- don't load on startup
	  event = "InsertEnter",  -- load when you enter insert mode

	  dependencies = { "nvim-lua/plenary.nvim" },
	  cmd = "LazyGit",
	  keys = {
		  { "<leader>lg", "<cmd>LazyGit<cr>", desc = "Open Lazygit" },
	  },
  },
}

