require("keymaps")
require("options")
-- require("manager")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    {
      "stevearc/oil.nvim",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      config = function()
        require("oil").setup({
          default_file_explorer = true,
          columns = { "icon" },
        })
        vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
      end,
    },
    {
      "folke/tokyonight.nvim",
      config = function()
        require("tokyonight").setup({
            transparent = true,
            styles = {
              sidebars = "transparent",
              floats = "transparent",
            },
        })
        vim.cmd([[colorscheme tokyonight-night]])
      end,
    },
    {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      config = function()
        require('nvim-treesitter').install({ "markdown", "markdown_inline" })
      end,
    },
    {
      "MeanderingProgrammer/render-markdown.nvim",
      -- 💡 1. 競合を防ぐため、dependencies から nvim-treesitter を外し、ft を削除します
      dependencies = { "nvim-tree/nvim-web-devicons" },
      keys = {
        { "<Space>tm", ":RenderMarkdown toggle<CR>", desc = "Toggle Markdown Render" },
      },
      config = function()
        require('render-markdown').setup({})
      end
    },
    {
      'the-mayankjha/fk_markdown.nvim',
      config = function()
        require('fk_markdown').setup({})
      end,
    },

  }
})

-- 💡 2. プラグインの管理外（一番外側）に自動コマンドを配置することで、ファイルタイプ判別時に確実に発火させます
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.treesitter.start()         -- 最新のTreesitterハイライトを強制スタート
    vim.opt_local.conceallevel = 2 -- 記号を隠してアイコンを表示するために必須
  end,
})
