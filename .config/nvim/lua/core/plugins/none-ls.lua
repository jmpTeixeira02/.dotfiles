return {
    {
        "nvimtools/none-ls.nvim",
        config = function()
            vim.keymap.set("n", "<C-s>", function()
                vim.lsp.buf.format()
                vim.cmd.w()
            end, {})
            local null_ls = require("null-ls")

            null_ls.setup({
                sources = {
                    null_ls.builtins.diagnostics.golangci_lint,
                    null_ls.builtins.formatting.gofumpt
                },
            })
        end
    },
    {
        "jay-babu/mason-null-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "nvimtools/none-ls.nvim",
        },
        config = function()
            require("mason-null-ls").setup({}) -- require your null-ls config here (example below)
        end,
    }
}
