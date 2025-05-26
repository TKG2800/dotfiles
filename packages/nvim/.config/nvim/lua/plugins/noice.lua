return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependenncies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("noice").setup({})
  end,
}
