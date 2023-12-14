return {
  'vim-test/vim-test',
  config = function()
    vim.g['test#go#gotest#options'] = '-v'

    -- Key mappings for vim-test
    vim.api.nvim_set_keymap('n', '<leader>cn', ':TestNearest<CR>',
      { noremap = true, silent = true, desc = 'Run [N]earest Test' })
    vim.api.nvim_set_keymap('n', '<leader>ct', ':TestFile<CR>',
      { noremap = true, silent = true, desc = 'Run [T]ests in File' })
    vim.api.nvim_set_keymap('n', '<leader>cs', ':TestSuite<CR>',
      { noremap = true, silent = true, desc = 'Run Tests in [S]uite' })

    -- There is key mapping for toggling the verbose mode. Check `keymaps.lua`.
  end,
}
