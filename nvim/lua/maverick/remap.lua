-- Automatically yank to clipboard
vim.api.nvim_set_keymap('n', 'yy', '"+yy', { noremap = true, silent = true })  -- For normal mode
vim.api.nvim_set_keymap('v', 'y', '"+y', { noremap = true, silent = true })   -- For visual mode
-- Shift cursor between windows
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })  -- Move left
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })  -- Move down
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })  -- Move up
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })  -- Move right
-- Map to comment selected lines in visual mode
vim.api.nvim_set_keymap('v', '<leader>/', ':lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>', { noremap = true, silent = true })

