return {
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio"
        },
        config = function()
            require("dapui").setup()
        end,
        keys = {
            { "<leader>db", function() require("dapui").toggle() end },
        }
        -- config = function()
        --     require("neodev").setup({
        --         library = { plugins = { "nvim-dap-ui" }, types = true },
        --     })
        -- end
    }
}
