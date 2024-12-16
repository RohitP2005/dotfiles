return {
  -- Add Undotree plugin
  {
    'mbbill/undotree',
    config = function()
      -- Keymap to toggle Undotree
      vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Toggle Undotree' })

      -- Persistent undo configuration
      if vim.fn.has('persistent_undo') == 1 then
        local target_path = vim.fn.expand('~/.undodir')  -- Expand to actual home directory path
        
        -- Create directory if it doesn't exist
        if vim.fn.isdirectory(target_path) == 0 then
          vim.fn.mkdir(target_path, 'p', 0700)
        end

        -- Set undodir and enable undofile
        vim.opt.undodir = target_path
        vim.opt.undofile = true
      end
    end
  }
}

