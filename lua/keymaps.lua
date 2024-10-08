-- NeoTree shortcuts
vim.keymap.set('n', '<leader>ff', '<Cmd>Neotree position=float reveal toggle<CR>', { desc = 'Open Neotree in floating mode' })
vim.keymap.set('n', '<leader>fb', '<Cmd>Neotree source=buffers position=float toggle<CR>', { desc = 'Show open buffers' })

-- Git
vim.keymap.set('n', '<leader>gb', '<Cmd>:GBrows<CR>', { desc = 'Brows to the current file on the git platform' })

-- Golang Test Verbose Mode
function ToggleGoTestVerbose()
  if vim.g['test#go#gotest#options'] == '-v' then
    vim.g['test#go#gotest#options'] = ''
    print 'Verbose mode off for Go tests'
  else
    vim.g['test#go#gotest#options'] = '-v'
    print 'Verbose mode on for Go tests'
  end
end

vim.api.nvim_set_keymap('n', '<leader>cgv', ':lua ToggleGoTestVerbose()<CR>', { noremap = true, silent = true, desc = 'Toggle [G]o Tests [V]erbose Mode' })

-- Copilot
-- vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
--   expr = true,
--   replace_keycodes = false,
-- })
-- set this one in the copilot.lua file
-- vim.g.copilot_no_tab_map = true

-- Switch between buffers
-- vim.keymap.set('n', '<M-h>', '<C-w>h', { noremap = true, silent = true, desc = 'Switch to left buffer' })
-- vim.keymap.set('n', '<M-k>', '<C-w>k', { noremap = true, silent = true, desc = 'Switch to top buffer' })
-- vim.keymap.set('n', '<M-j>', '<C-w>j', { noremap = true, silent = true, desc = 'Switch to bottom buffer' })
-- vim.keymap.set('n', '<M-l>', '<C-w>l', { noremap = true, silent = true, desc = 'Switch to right buffer' })
vim.g.tmux_navigator_no_mappings = 1

vim.keymap.set('n', '<M-h>', ':TmuxNavigateLeft<cr>', { noremap = true, silent = true, desc = 'Switch to left buffer' })
vim.keymap.set('n', '<M-k>', ':TmuxNavigateUp<cr>', { noremap = true, silent = true, desc = 'Switch to top buffer' })
vim.keymap.set('n', '<M-j>', ':TmuxNavigateDown<cr>', { noremap = true, silent = true, desc = 'Switch to bottom buffer' })
vim.keymap.set('n', '<M-l>', ':TmuxNavigateRight<cr>', { noremap = true, silent = true, desc = 'Switch to right buffer' })

-- Define the DiagnosticToggle command
vim.api.nvim_create_user_command('DiagnosticToggle', function()
  local config = vim.diagnostic.config
  local current_config = config()
  config {
    virtual_text = not current_config.virtual_text,
    underline = not current_config.virtual_text,
    signs = not current_config.virtual_text,
  }
end, { desc = 'Toggle Diagnostics' })

-- Create a keymap for the DiagnosticToggle command
vim.api.nvim_set_keymap('n', '<leader>cd', '<cmd>DiagnosticToggle<CR>', { noremap = true, silent = true, desc = 'Toggle Diagnostics' })
