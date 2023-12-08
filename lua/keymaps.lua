-- NeoTree shortcuts
vim.keymap.set('n', '<C-b>', '<Cmd>Neotree position=left toggle<CR>', { desc = 'Open Neotree in floating mode' })
vim.keymap.set('n', '<leader>tf', '<Cmd>Neotree position=float reveal toggle<CR>',
  { desc = 'Open Neotree in floating mode' })
vim.keymap.set('n', '<leader>tb', '<Cmd>Neotree source=buffers position=float toggle<CR>', { desc = 'Show open buffers' })

-- Git
vim.keymap.set('n', '<leader>gb', '<Cmd>:GBrows<CR>', { desc = 'Brows to the current file on the git platform' })
