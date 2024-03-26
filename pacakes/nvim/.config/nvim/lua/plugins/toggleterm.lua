return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {[[ things you want to change go here ]]
  },
  keys = {
          { "<C-t>",":ToggleTerm size=40 direction=float <CR>", mode = "n", silent = true },
          { "<C-t>", "<C-\\><C-n>:ToggleTerm<CR>", mode = "t", silent = true },
  },
  "kdheepak/lazygit.nvim",
  cmd = {
         "LazyGit",
         "LazyGitConfig",
         "LazyGitCurrentFile",
         "LazyGitFilter",
         "LazyGitFilterCurrentFile",
  },
  dependencies = {
      "nvim-lua/plenary.nvim",
  },
  keys = {
     { "<leader>lg", "<CMD>LazyGit<CR>", desc = "LazyGit"}
  }
}
