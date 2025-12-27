return {
  {
    "fredrikaverpil/neotest-golang",
  },
  {
    "andythigpen/nvim-coverage",
    version = "*",
    config = function()
      require("coverage").setup({
        auto_reload = true,
        lang = {
          ["go"] = {
            coverage_file = "cover.out",
          },
        },
      })
    end,
    keys = function()
      local keys = {
        {
          "<leader>ct",
          function()
            require("coverage"):toggle()
          end,
          desc = "Toggle Coverage",
        },
        {
          "<leader>cL",
          function()
            require("coverage"):load()
          end,
          desc = "Load Coverage",
        },
        {
          "<leader>co",
          function()
            require("coverage"):summary()
          end,
          desc = "Show Coverage Output",
        },
      }

      return keys
    end,
  },
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        ["neotest-golang"] = {
          dap_go_enabled = true,
          testify_enabled = true,
        },
      },
    },
  },
}
