-- NeoTree shortcuts
vim.keymap.set('n', '<C-b>', '<Cmd>Neotree position=left toggle<CR>', { desc = 'Open Neotree in floating mode' })
vim.keymap.set('n', '<leader>ef', '<Cmd>Neotree position=float reveal toggle<CR>',
  { desc = 'Open Neotree in floating mode' })
vim.keymap.set('n', '<leader>eb', '<Cmd>Neotree source=buffers position=float toggle<CR>', { desc = 'Show open buffers' })
