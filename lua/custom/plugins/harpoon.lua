return {
  'ThePrimeagen/harpoon',
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require('harpoon').setup {}

    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>ha", mark.toggle_file, { desc = 'Toggle mark file for harpoon' })
    vim.keymap.set("n", "<C-h>", ui.toggle_quick_menu, { desc = 'Show marked files for harpoon' })

    vim.keymap.set("n", "<leader>h1", function() ui.nav_file(1) end, { desc = 'Harpoon file #1' })
    vim.keymap.set("n", "<leader>h2", function() ui.nav_file(2) end, { desc = 'Harpoon file #2' })
    vim.keymap.set("n", "<leader>h3", function() ui.nav_file(3) end, { desc = 'Harpoon file #3' })
    vim.keymap.set("n", "<leader>h4", function() ui.nav_file(4) end, { desc = 'Harpoon file #4' })

    -- To manually run harpoon commands, use the following format:
    -- :lua require("harpoon.ui").nav_file(1)
  end,
}
