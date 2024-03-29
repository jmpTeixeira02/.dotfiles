return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        vim.keymap.set("n", "<leader>tf", function() require("trouble").toggle("document_diagnostics") end)
        vim.keymap.set("n", "<leader>ta", function() require("trouble").toggle("workspace_diagnostics") end)
    end
}
