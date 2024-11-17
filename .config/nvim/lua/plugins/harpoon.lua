return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("harpoon"):setup()
  end,
  keys = {
    {
      "<leader>A",
      function()
        require("harpoon"):list():add()
      end,
    },
    {
      "<leader>a",
      function()
        local harpoon = require("harpoon")
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
    },
    {
      "<leader>i",
      function()
        require("harpoon"):list():prev()
      end,
    },
    {
      "<leader>o",
      function()
        require("harpoon"):list():next()
      end,
    },
    {
      "<leader>1",
      function()
        require("harpoon"):list():select(1)
      end,
    },
    {
      "<leader>2",
      function()
        require("harpoon"):list():select(2)
      end,
    },
    {
      "<leader>3",
      function()
        require("harpoon"):list():select(3)
      end,
    },
    {
      "<leader>4",
      function()
        require("harpoon"):list():select(4)
      end,
    },
    {
      "<leader>5",
      function()
        require("harpoon"):list():select(5)
      end,
    },
  },
}
