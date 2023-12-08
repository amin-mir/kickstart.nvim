return {
  'mhartington/formatter.nvim',
  config = function()
    local formatter = require("formatter")
    formatter.setup {
      ft = {
        js = {
          { exe = "prettier",      args = { "--stdin-filepath", "%filepath" }, },
          { exe = "eslint-format", args = { "--stdin" }, },
        },
        lua = {
          require('formatter.filetypes.lua').stylua
        }
      },
    }

    local autocmd = vim.api.nvim_create_autocmd

    autocmd("BufWritePost", {
      pattern = "*.(js|lua)",
      callback = function()
        vim.cmd("Format")
      end,
    })

    -- vim.api.nvim_create_autocmd("BufWritePost", {
    --  pattern = "*",
    --  command = "lua vim.lsp.buf.formatting()",
    -- })
  end,
}
