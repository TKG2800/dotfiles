local lazypath = vim.fn.stdpath("data") .. "/lazylazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  spec = {
    { import = "plugins" },
  },
}

local option = {
  root = vim.fn.stdpath("data") .. "/lazy",
  lockfile = vim.fn.stdpath("config") .. "/lazy-lock.json",
  concurrency = 10,
  log = { level = "info" },
  ui = {
    icons = {
      cmd = "",
      config = "󱌣",
      event = "",
      ft = "",
      init = "",
      keys = "󰌆",
      plugin = "󰚥",
      runtime = "󰌢",
      require = "",
      source = "",
      start = "",
      task = "󰐃",
      lazy = "󰒲",
    },
  },
  checker = {
    enabled = true,
  },
  diff = {
    cmd = "delta",
  },
  rtp = {
    disabled_plugns = {
      "gzip",
      "matchit",
      "matchparen",
      "netrwPlugin",
      "tarPlugin",
      "tohtml",
      "tutor",
      "zipPlugin",
    },
  },
}

require("lazy").setup(plugins,option)
