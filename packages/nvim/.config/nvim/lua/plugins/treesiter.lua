return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufNewFile", "BufRead" },
  cmd = { "TSUpdateSync", "TSUpdate", "TSInstal" },
  dependencies = {
    {
      "nvim-treesitter/nvim-treesitter-context",
    },
    {
      "nvim-treesitter/nvim-treesitter-textobjects",
      config = function()
        local move = require("nvim-treesitter.textobjects.move")
        local configs = require("nvim-treesitter.configs")
        require("nvim-treesitter.configs").setup({
          textobjects = {
            select = {
              enable = true,
              lookahead = true,
              keymaps = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",
              },
              selection_modes = {
                ["@parrameter.outer"] = "v",
                ["@function.outer"] = "V",
                ["@class.outer"] = "<c-v>",
              },
              include_surrounding_whitespace = true,
            },
          },
        })
      end,
    },
  },
  config = function()
    require("nvim-treesitter.configs").setup({
    highlight = { enable = true },
    indent = { enable = true },
    matchup = { enable = true },
    ensure_installed = {
      "bash",
      "c",
      "diff",
      "html",
      "java",
      "javascript",
      "jsdoc",
      "json",
      "jsonc",
      "lua",
      "luadoc",
      "luap",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "regex",
      "toml",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "yaml",
      "rust",
      "css",
      "scss",
    },
  })
  end,
}
