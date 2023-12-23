return {
  'navarasu/onedark.nvim',
  'projekt0n/github-nvim-theme',
  'catppuccin/nvim',
  "folke/tokyonight.nvim",
  {
    "mcchrish/zenbones.nvim",
    dependencies = { "rktjmp/lush.nvim" },
    config = function()
      vim.cmd('colorscheme neobones')
    end,
  }
}
