--
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
--
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
--
vim.opt.number = true
vim.relativenumber = true
vim.opt.list = true
vim.opt.listchars = { tab = ">-", trail ="-", eol ="↲", extends = "»", precedes = "«", nbsp ="%",space ="_" }
vim.opt.title = true
vim.opt.laststatus = 3
vim.opt.ruler = true
-- vim.opt.ambiwidth = "double"
vim.opt.ambiwidth = "single"
vim.cmd("syntax enable")
vim.opt.linebreak = true
vim.opt.updatetime = 250
-- 

vim.opt.so = 999
vim.opt.backspace = "indent,eol,start"
vim.opt.virtualedit = "onemore"

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrapscan = true
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- backup swap
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.autoread = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"
vim.opt.undofile = true

-- history
vim.opt.history = 1000
vim.opt.clipboard:append("unnamed")
-- font
vim.opt.guifont = "CartographCF Nerd Font"
vim.opt.termguicolors = true
vim.opt.conceallevel = 2
-- help
vim.opt.helplang = {"ja", "en"}
-- windows
vim.opt.splitbelow = true
vim.opt.splitright = true
-- leaderkey
vim.g.mapleader = " "
-- 
vim.opt.matchpairs:append({
        "（:）",
        "「:」",
        "『:』",
        "【:】",
})
--
vim.o.timeoutlen = 900
vim.o.ttimeoutlen = 300
vim.o.timeout = true
vim.o.ttimeout = true
--
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
--
vim.opt.guicursor = {
  "n-v-c:block",
  "i-ci-ve:ver25",
  "r-cr:hor20",
  "o:hor50",
  "a:blinkwait700-blinkoff400-blinkon250",
  "sm:block-blinkwait175-blinkoff150-blinkon175"
}
