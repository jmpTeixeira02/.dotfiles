return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = {
      component_separators = "",
      always_divide_middle = true,
      globalstatus = vim.o.laststatus == 3,
      disabled_filetypes = { statusline = { "dashboard", "alpha", "ministarter", "snacks_dashboard" } },
    },
    sections = {
      lualine_a = {
        { "mode" },
      },
      lualine_b = {
        { "branch" },
        { "diff", symbols = { added = " ", modified = " ", removed = " " } },
        { "diagnostics", symbols = { error = " ", warn = " ", info = " ", hint = "" } },
        {
          "buffers",
          buffers_color = {
            active = "lualine_a_normal",
            inactive = "lualine_b_normal",
          },
          symbols = {
            modified = " ●",
            alternate_file = "",
            directory = "",
          },
          mode = 2,
        },
      },
      lualine_c = {
        { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
        { LazyVim.lualine.pretty_path() },
      },
      lualine_x = {
          -- stylua: ignore
          {
            function() return "  " .. require("dap").status() end,
            cond = function() return package.loaded["dap"] and require("dap").status() ~= "" end,
            color = function() return LazyVim.ui.fg("Debug") end,
          },
          -- stylua: ignore
          {
            require("lazy.status").updates,
            cond = require("lazy.status").has_updates,
            color = function() return LazyVim.ui.fg("Special") end,
          },
      },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },
    extensions = { "nvim-dap-ui", "trouble", "mason" },
  },
  keys = function()
    local keys = {}

    for i = 1, 8 do
      table.insert(keys, {
        "<leader>b" .. i,
        function()
          vim.cmd("LualineBuffersJump! " .. i)
        end,
        desc = "Buffer to " .. i,
      })
    end
    return keys
  end,
}
