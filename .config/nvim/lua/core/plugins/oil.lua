return {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    config = function()
        require("oil").setup({
            keymaps = {
                ["<C-s>"] = "false",
                ["<C-t>"] = "false",
                ["<C-h>"] = "false",
                ["<C-c>"] = "false",
            }
        })
    end,
}
