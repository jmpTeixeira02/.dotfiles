return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "letieu/harpoon-lualine" },
  opts = {
    options = {
      icons_enabled = true,
      theme = "auto",
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      },
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = {
        "branch",
        "diff",
        { "diagnostics", symbols = { error = "", warn = "", info = "", hint = "" } },
      },
      lualine_c = { { "filename", path = 1 }, { "harpoon2", no_harpoon = "" } },
      lualine_x = { "filetype" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = { "nvim-dap-ui", "oil", "trouble" },
  },
}
