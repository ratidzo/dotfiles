-- Use <Esc> to exit terminal mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- Set leader, h, j, k, l to navigate windows
vim.keymap.set('n', '<leader>h', '<C-w>h', { desc = 'Focus left' })
vim.keymap.set('n', '<leader>j', '<C-w>j', { desc = 'Focus down' })
vim.keymap.set('n', '<leader>k', '<C-w>k', { desc = 'Focus up' })
vim.keymap.set('n', '<leader>l', '<C-w>l', { desc = 'Focus down' })

-- Split windows vertically and horizontally
vim.keymap.set('n', '<leader>s', ':split<CR>', { desc = 'Horizontal split' })
vim.keymap.set('n', '<leader>v', ':vsplit<CR>', { desc = 'Vertical split' })



-- File explorer
vim.keymap.set('n', '<leader>e', ':Ex<CR>', { desc = 'Launch file explorer' })

