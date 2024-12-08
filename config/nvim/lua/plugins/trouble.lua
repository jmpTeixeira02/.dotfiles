return {
  "folke/trouble.nvim",
  keys = {
    {
      "<leader>ta",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics project",
    },
    {
      "<leader>tf",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "Diagnostics file",
    },
  },
}
