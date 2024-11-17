return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("harpoon"):setup()
  end,
  keys = {
    { "<leader>h", "", desc = "+harpoon" },
    {
      "<leader>hA",
      function()
        require("harpoon"):list():add()
      end,
      desc = "Harpoon list",
    },
    {
      "<leader>ha",
      function()
        local harpoon = require("harpoon")
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = "Add To Harpoon",
    },
    {
      "<leader>hi",
      function()
        require("harpoon"):list():prev()
      end,
      desc = "Previous Harpoon",
    },
    {
      "<leader>ho",
      function()
        require("harpoon"):list():next()
      end,
      desc = "Next Harpoon",
    },
    {
      "<leader>h1",
      function()
        require("harpoon"):list():select(1)
      end,
      desc = "Harpoon File 1",
    },
    {
      "<leader>h2",
      function()
        require("harpoon"):list():select(2)
      end,
      desc = "Harpoon File 2",
    },
    {
      "<leader>h3",
      function()
        require("harpoon"):list():select(3)
      end,
      desc = "Harpoon File 3",
    },
    {
      "<leader>h4",
      function()
        require("harpoon"):list():select(4)
      end,
      desc = "Harpoon File 4",
    },
    {
      "<leader>h5",
      function()
        require("harpoon"):list():select(5)
      end,
      desc = "Harpoon File 5",
    },
  },
}
