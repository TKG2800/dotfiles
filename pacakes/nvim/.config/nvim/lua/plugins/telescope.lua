return {
    'nvim-telescope/telescope.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
            'nvim-telescope/telescope-frecency.nvim',
            config = function()
                require("telescope").load_extension("frecency")
            end,
            dependencies = "kkharji/sqlite.lua",
      },
      "nvim-tree/nvim-web-devicons",
      {
        "nvim-telescope/telescope-live-grep-args.nvim",
        config = function()
          require("telescope").load_extension("live_grep_args")
        end,
      },
      {
        "Allianaab2m/telescope-kensaku.nvim",
        config = function()
          require("telescope").load_extension("kensaku")
        end,
      },
      {
        "nvim-telescope/telescope-project.nvim",
        config = function()
          require("telescope").load_extension("project")
        end,
      },
      {
        "nvim-telescope/telescope-media-files.nvim",
        dependencies = {
          "nvim-lua/popup.nvim",
        },
        config = function()
          require("telescope").load_extension("media_files")
          require("telescope").setup({
          extensions = { media_files = { find_cmd = "rg" } },
          })
        end,
      },
      {
        "nvim-telescope/telescope-file-browser.nvim",
        config = function()
          require("telescope").load_extension("file_browser")
        end,
      },
  },
  keys = {
    {
      "<leader><leader>",
      ":telescope find_files find_command=rg,--files,--hidden,--glob,!*.git<CR>",
      desc = "File",
      silent = true,
    },
    { "<leader>f", ":Telescope files_browser", desc = "brower", silent = true},
    { "<leader>ff", ":Telescope frecency<CR>", desc = "Recent", silent = true},
    { "<leader>fg", ":Telescope live_grep_args<CR>", desc = "Text", silent = true},
    { "<leader>fh", ":Telescope help_tags<CR>", desc = "help tags", silent = true},
  }
}
