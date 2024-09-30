return {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
        {
            "<leader>ta",
            "<cmd>Trouble diagnostics toggle<cr>",
            desc = "Diagnostics (Trouble) project",
        },
        {
            "<leader>tf",
            "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
            desc = "Diagnostics this file",
        },
    },
}
