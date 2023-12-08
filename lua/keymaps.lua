-- NeoTree shortcuts
vim.keymap.set('n', '<C-b>', '<Cmd>Neotree position=left toggle<CR>', { desc = 'Open Neotree in floating mode' })
vim.keymap.set('n', '<leader>ff', '<Cmd>Neotree position=float reveal toggle<CR>',
  { desc = 'Open Neotree in floating mode' })
vim.keymap.set('n', '<leader>fb', '<Cmd>Neotree source=buffers position=float toggle<CR>', { desc = 'Show open buffers' })

-- Git
vim.keymap.set('n', '<leader>gb', '<Cmd>:GBrows<CR>', { desc = 'Brows to the current file on the git platform' })
