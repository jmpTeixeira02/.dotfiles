return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = {
      component_separators = "",
      always_divide_middle = true,
      globalstatus = false,
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
        { "filename", path = 1 },
      },
      lualine_x = { "filetype" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },
    extensions = { "nvim-dap-ui", "oil", "trouble" },
  },
}
