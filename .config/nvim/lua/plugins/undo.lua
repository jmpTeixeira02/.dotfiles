return {
  "debugloop/telescope-undo.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
    },
  },
  keys = {
    { "<leader>uu", "<cmd>Telescope undo<cr>", desc = "Open undo-tree" },
  },
}
