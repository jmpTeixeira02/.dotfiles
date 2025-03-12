return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "bwpge/lualine-pretty-path",
  },
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
      },
      lualine_c = {
        {
          "pretty_path",
          directories = {
            max_depth = 4,
          },
          highlights = {
            newfile = "LazyProgressDone",
          },
          separator = "",
        },
        { "navic", color_correction = "dynamic" },
      },
      lualine_x = {
          -- stylua: ignore
          {
            function() return "  " .. require("dap").status() end,
            cond = function() return package.loaded["dap"] and require("dap").status() ~= "" end,
            color = function() return { fg = Snacks.util.color("Debug") } end,
          },
          -- stylua: ignore
          {
            require("lazy.status").updates,
            cond = require("lazy.status").has_updates,
            color = function() return { fg = Snacks.util.color("Special") } end,
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
