return {
    "debugloop/telescope-undo.nvim",
    dependencies = { 
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
    },
    },
    keys = {
    {"<leader>u","<cmd>Telescope undo<cr>"},
  },
}
