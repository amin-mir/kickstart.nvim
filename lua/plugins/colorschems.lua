return {
  {
    'zenbones-theme/zenbones.nvim',
    priority = 1000,
    lazy = false,
    dependencies = { 'rktjmp/lush.nvim' },
    init = function()
      vim.cmd.colorscheme = 'zenwritten'
    end,
  },
  {
    'jesseleite/nvim-noirbuddy',
    dependencies = {
      { 'tjdevries/colorbuddy.nvim' },
    },
    lazy = false,
    priority = 1000,
    opts = {
      preset = 'minimal',
    },
  },
}
