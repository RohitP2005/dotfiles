return {
  -- Add vim-fugitive plugin
  {
    'tpope/vim-fugitive',
    cmd = { 'Git', 'G', 'Gdiffsplit', 'Gvdiffsplit', 'Gread', 'Gwrite', 'Ggrep', 'GMove', 'GDelete', 'GBrowse' },
    keys = {
      { '<leader>gs', vim.cmd.Git, desc = 'Git Status' },
      { '<leader>gd', ':Gdiffsplit<CR>', desc = 'Git Diff' },
      { '<leader>gc', ':Git commit<CR>', desc = 'Git Commit' },
      { '<leader>gp', ':Git push<CR>', desc = 'Git Push' },
      { '<leader>gl', ':Git log<CR>', desc = 'Git Log' },
    },
  },
}

