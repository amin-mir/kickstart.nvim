return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()

    vim.keymap.set('n', '<leader>ha', function()
      harpoon:list():append()
    end, { desc = 'Harpoon toggle mark file' })

    vim.keymap.set('n', '<leader>hh', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Harpoon show marked files' })

    vim.keymap.set('n', '<leader>h1', function()
      harpoon:list():select(1)
    end, { desc = 'Harpoon file #1' })
    vim.keymap.set('n', '<leader>h2', function()
      harpoon:list():select(2)
    end, { desc = 'Harpoon file #2' })
    vim.keymap.set('n', '<leader>h3', function()
      harpoon:list():select(3)
    end, { desc = 'Harpoon file #3' })
    vim.keymap.set('n', '<leader>h4', function()
      harpoon:list():select(3)
    end, { desc = 'Harpoon file #4' })

    -- To manually run harpoon commands, use the following format:
    -- :lua require("harpoon.ui").nav_file(1)
  end,
}
