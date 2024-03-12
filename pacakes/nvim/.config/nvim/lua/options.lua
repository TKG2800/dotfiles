------(encoding)文字コード----
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
------(tab·inddent)タブ・インテンド
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
------(display)表示------
-- transparent
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.pumblend = 0
vim.opt.number = true
vim.opt.list = true
vim.opt.listchars = { tab='>-',trail='-',eol='↲',extends='>',precedes='<',nbsp='%',space='_'}
vim.opt.title = true
vim.opt.visualbell = true
vim.opt.laststatus = 2
vim.opt.ruler = true
vim.opt.cursorcolumn = true
vim.opt.cursorline = true
vim.opt.ambiwidth = "double"
vim.cmd('syntax enable')
