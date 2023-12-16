-- NeoTree shortcuts
vim.keymap.set('n', '<C-b>', '<Cmd>Neotree position=left toggle<CR>', { desc = 'Open Neotree in floating mode' })
vim.keymap.set('n', '<leader>ff', '<Cmd>Neotree position=float reveal toggle<CR>',
  { desc = 'Open Neotree in floating mode' })
vim.keymap.set('n', '<leader>fb', '<Cmd>Neotree source=buffers position=float toggle<CR>', { desc = 'Show open buffers' })

-- Git
vim.keymap.set('n', '<leader>gb', '<Cmd>:GBrows<CR>', { desc = 'Brows to the current file on the git platform' })

-- Golang Test Verbose Mode
function ToggleGoTestVerbose()
  if vim.g['test#go#gotest#options'] == '-v' then
    vim.g['test#go#gotest#options'] = ''
    print("Verbose mode off for Go tests")
  else
    vim.g['test#go#gotest#options'] = '-v'
    print("Verbose mode on for Go tests")
  end
end

vim.api.nvim_set_keymap('n', '<leader>cgv', ':lua ToggleGoTestVerbose()<CR>',
  { noremap = true, silent = true, desc = 'Toggle [G]o Tests [V]erbose Mode' })

-- Copilot
vim.api.nvim_set_keymap('i', '<C-l>', 'copilot#Accept("<CR>")',
  { noremap = true, silent = true, expr = true, desc = 'Accept copilot suggestion' })
