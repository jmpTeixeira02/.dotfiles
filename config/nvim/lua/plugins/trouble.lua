return {
  "folke/trouble.nvim",
  keys = {
    {
      "<leader>ta",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics project",
      noremap = true,
    },
    {
      "<leader>tf",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "Diagnostics file",
    },
    {
      "<leader>xe",
      "<cmd>Trouble diagnostics filter.severity=vim.diagnostic.severity.ERROR<cr>",
      desc = "Diagnostic Errors",
      noremap = true,
    },
    {
      "<leader>xE",
      "<cmd>Trouble diagnostics filter.severity=vim.diagnostic.severity.ERROR filter.buf=0<cr>",
      desc = "Diagnostic Errors Buffer",
      noremap = true,
    },
  },
}
