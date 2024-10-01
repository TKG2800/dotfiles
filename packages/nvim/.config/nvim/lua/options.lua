-- ==== Display ====
vim.opt.number = true
vim.opt.title = true
vim.opt.visualbell = true  -- Neovim では t_vb は無効。visualbell に置き換え
vim.opt.laststatus = 2
vim.opt.ruler = true
vim.opt.ambiwidth = "double"
vim.cmd('syntax on')  -- syntax on は vim.cmd で呼び出す

-- ==== Character • Cursor ====
vim.opt.fileencoding = "utf-8"
vim.opt.whichwrap = "b,s,h,l,<,>,[,],~"
vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.list = true
vim.opt.listchars = {
  tab = '▸-', 
  trail = '-', 
  eol = '↲', 
  nbsp = '%', 
  space = '_'
}
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.virtualedit = "onemore"
vim.opt.tabstop = 2

-- ==== Mouse ====
vim.opt.mouse = "a"

-- ==== Search ====
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrapscan = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- ==== Other ====
vim.opt.history = 100
vim.opt.clipboard:append("unnamed")
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.autoread = true
