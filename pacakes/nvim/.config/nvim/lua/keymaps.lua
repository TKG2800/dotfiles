-- jキーを二度押しでESCキー
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })

-- leaderキーをspaceキーに設定
vim.g.mapleader = " "

-- ウィンドウ操作
vim.api.nvim_set_keymap('n', 'ss', ':<C-u>sp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'sv', ':<C-u>vs<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'sq', ':<C-u>q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'sQ', ':<C-u>bd<CR>',{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'sj', '<C-w>j',{ noremap = true })
vim.api.nvim_set_keymap('n', 'sk', '<C-w>k',{ noremap = true })
vim.api.nvim_set_keymap('n', 'sl', '<C-w>l',{ noremap = true })
vim.api.nvim_set_keymap('n', 'sh', '<C-w>h',{ noremap = true })
vim.api.nvim_set_keymap('n', 'sJ', '<C-w>J',{ noremap = true })
vim.api.nvim_set_keymap('n', 'sK', '<C-w>K',{ noremap = true })
vim.api.nvim_set_keymap('n', 'sL', '<C-w>L',{ noremap = true })
vim.api.nvim_set_keymap('n', 'sH', '<C-w>H',{ noremap = true })
vim.api.nvim_set_keymap('n', 's>', '<C-w>>',{ noremap = true })
vim.api.nvim_set_keymap('n', 's<', '<C-w><',{ noremap = true })
vim.api.nvim_set_keymap('n', 's+', '<C-w>+',{ noremap = true })
vim.api.nvim_set_keymap('n', 's-', '<C-w>-',{ noremap = true })

-- タブ操作
vim.api.nvim_set_keymap('n', 'st', ':<C-u>tabnew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'sn', 'gt', { noremap = true })
vim.api.nvim_set_keymap('n', 'sp', 'gT', { noremap = true })

-- 
