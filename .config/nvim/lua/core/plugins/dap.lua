return {
    {
        "williamboman/mason.nvim",
        "mfussenegger/nvim-dap",
        "jay-babu/mason-nvim-dap.nvim",
        config = function()
            require("mason").setup()
            require("mason-nvim-dap").setup({
                ensure_installed = { "delve" }
            })
        end
    },
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "leoluz/nvim-dap-go",
            "rcarriga/nvim-dap-ui",
            "tpope/vim-fugitive",
            "folke/trouble.nvim",
            "nvim-neotest/nvim-nio",
        },
        config = function()
            require('dap-go').setup()
            local dap, dapui = require("dap"), require("dapui")
            dap.listeners.before.attach.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                dapui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                dapui.close()
            end
        end,
        keys = {
            { "<leader>bb", function() require("dap").continue() end },
            { "<leader>bt", function() require("dap").toggle_breakpoint() end },
            { "<leader>be", function() require("dapui").eval() end },
            { "<F5>",       function() require("dap").continue() end },
            { "<F10>",      function() require("dap").step_over() end },
            { "<F11>",      function() require("dap").step_into() end },
            { "<F12>",      function() require("dap").setp_out() end },
        }
        -- config = function()
        --     require("neodev").setup({
        --         library = { plugins = { "nvim-dap-ui" }, types = true },
        --     })
        -- end
    }
}
