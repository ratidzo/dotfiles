vim.g.mapleader = ' '
-- Some custom keymaps
-- Split window horizontally
vim.keymap.set('n', '<leader>h', ':split<CR>', { desc = 'Split window horizontally' })
-- Split window vertically
vim.keymap.set('n', '<leader>v', ':vsplit<CR>', { desc = 'Split window vertically' })

-- Navigate windows
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Focus left' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Focus down' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Focus up' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Focus right' })

-- Open File Explorer (I'm using the default netrw - blame the Primeagen, not me!)
vim.keymap.set('n', '<leader>e', ':Ex<CR>', { desc = 'Open file explorer' })
vim.keymap.set('n', '<leader>f', 'fzf.files')





