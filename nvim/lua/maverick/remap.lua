-- Automatically yank to clipboard
vim.api.nvim_set_keymap('n', 'yy', '"+yy', { noremap = true, silent = true })  -- For normal mode
vim.api.nvim_set_keymap('v', 'y', '"+y', { noremap = true, silent = true })   -- For visual mode

