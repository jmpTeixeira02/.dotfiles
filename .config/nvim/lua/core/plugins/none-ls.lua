return {
    {
    "nvimtools/none-ls.nvim",
    config = function ()
        local null_ls = require("null-ls")

        vim.keymap.set("n", "<C-s>", vim.lsp.buf.format, {})
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
      require("mason-null-ls").setup({
                automatic_installation = true
            })
    end,
}
}
