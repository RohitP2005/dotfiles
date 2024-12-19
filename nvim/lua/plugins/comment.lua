return {
  {
    'numToStr/Comment.nvim',
    config = function()
      -- Set up Comment.nvim with the default settings
      require('Comment').setup()

      -- Keymapping for commenting selected lines in visual mode
      vim.api.nvim_set_keymap('v', '<leader>/', ':lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>', { noremap = true, silent = true })
    end
  }
}

