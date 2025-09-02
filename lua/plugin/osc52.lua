return {
{
  "ojroques/nvim-osc52",
  event = "VeryLazy",
  config = function()
    require("osc52").setup({
      max_length = 0, -- no limit
      silent = true,
    })

    -- Example keymap to copy current line
    vim.keymap.set('n', '<leader>y', function()
      require('osc52').copy_register('+')
      print("Copied to system clipboard via OSC52!")
    end)
  end,
}
	

}
