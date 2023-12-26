-- NeoTree shortcuts
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

-- Swtich between buffers
-- vim.keymap.set('n', '<M-h>', '<C-w>h', { noremap = true, silent = true, desc = 'Switch to left buffer' })
-- vim.keymap.set('n', '<M-k>', '<C-w>k', { noremap = true, silent = true, desc = 'Switch to top buffer' })
-- vim.keymap.set('n', '<M-j>', '<C-w>j', { noremap = true, silent = true, desc = 'Switch to bottom buffer' })
-- vim.keymap.set('n', '<M-l>', '<C-w>l', { noremap = true, silent = true, desc = 'Switch to right buffer' })
vim.g.tmux_navigator_no_mappings = 1

vim.keymap.set('n', '<M-h>', ":TmuxNavigateLeft<cr>",
  { noremap = true, silent = true, desc = 'Switch to left buffer' })
vim.keymap.set('n', '<M-k>', ":TmuxNavigateUp<cr>",
  { noremap = true, silent = true, desc = 'Switch to top buffer' })
vim.keymap.set('n', '<M-j>', ":TmuxNavigateDown<cr>",
  { noremap = true, silent = true, desc = 'Switch to bottom buffer' })
vim.keymap.set('n', '<M-l>', ":TmuxNavigateRight<cr>",
  { noremap = true, silent = true, desc = 'Switch to right buffer' })
