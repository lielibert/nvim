return {
  "nvim-telescope/telescope.nvim",
  keys={ "<leader>ff"},
  dependencies = {
    "nvim-lua/plenary.nvim", -- Required dependency
    {
      "nvim-telescope/telescope-fzf-native.nvim", -- Native FZF sorter for speed
      build = "make",
      cond = function()
        return vim.fn.executable("make") == 1
      end,
    },
  },
  config = function()
    local telescope = require("telescope")

    telescope.setup({
      defaults = {
        layout_strategy = "flex",
        sorting_strategy = "ascending",
        layout_config = { prompt_position = "top" },
        mappings = {
          i = {
            ["<C-j>"] = "move_selection_next",
            ["<C-k>"] = "move_selection_previous",
          },
        },
      },
      pickers = {
        find_files = { hidden = true }, -- Show dotfiles too
      },
      extensions = {
        fzf = {
          fuzzy = true,                    -- Enable fuzzy matching
          override_generic_sorter = true,  -- Use fzf sorter everywhere
          override_file_sorter = true,
          case_mode = "smart_case",        -- Smart case matching
        },
      },
    })

    -- Load FZF extension
    telescope.load_extension("fzf")

    -- Keymaps
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help" })
  end,
}

