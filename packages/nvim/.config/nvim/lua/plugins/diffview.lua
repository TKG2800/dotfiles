return {
  "sindrets/diffview.nvim",
  lazy = true,
  config = function()
    local actives = require("diffview.actions")

    require("diffview").setup({
      diff_binaries = false,
      enhanced_diff_hl = false,
      git_cmd = { "git" },
      hg_cmd = { "hg" },
      use_icons = true,
    })
  end,
}
