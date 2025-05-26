return {
  "folke/trouble.nvim",
  dependencies = { "nvim-trre/nvim-web-devicons" },
  opt = {},
  keys = {
    { "<leader>tr", ":TroubleReflesh<CR>", desc = "Trouble Reflesh", silent = true },
    {
      "<leader>xx",
      function()
        require("trouble").toggle()
      end,
      desc = "Trouble Toggle",
      silent = true,
    },
    {
      "<leader>xw",
      function()
        require("trouble").toggle("workspace_diagnostics")
      end,
      desc = "Trouble Workspace",
      silent = true,
    },
    {
      "<leader>xd",
      function()
        require("trouble").toggle("document_diagnostics")
      end,
      desc = "Trouble document",
      silent = true,
    },
    {
      "<leader:w>xq",
      function()
        require("trouble").toggle("quickfix")
      end,
      desc = "Trouble quickfix",
      silent = true,
    },
    {
      "<leader>xl",
      function()
        require("trouble").toggle("loclist")
      end,
      desc = "Trouble loclist",
      silent = true,
    },
  },
}
