return {
  'navarasu/onedark.nvim',
  'projekt0n/github-nvim-theme',
  'catppuccin/nvim',
  'folke/tokyonight.nvim',
  {
    'mcchrish/zenbones.nvim',
    priority = 1000,
    dependencies = { 'rktjmp/lush.nvim' },
    init = function()
      vim.cmd.colorscheme 'zenwritten'
      -- vim.cmd.colorscheme 'tokyonight-night'
      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
