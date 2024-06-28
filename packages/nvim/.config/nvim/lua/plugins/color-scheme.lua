return {
  {
    "xiyaowong/transparent.nvim",
    config = function()
      require("transparent").setup({ -- Optional, you don't have to run setup.
        groups = { -- table: default groups
          'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
          'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
          'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
          'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
          'EndOfBuffer',
        },
        extra_groups = {}, -- table: additional groups that should be cleared
        exclude_groups = {}, -- table: groups you don't want to clear
})
    end,
  },
 {
  "tomasr/molokai",
  lazy = false,
  priority = 10000,
  config = function()
    -- vim.cmd[[colorscheme molokai]]
  end,
 },
 {
   'tanvirtin/monokai.nvim',
   config = function()
     require('monokai').setup { palette = require('monokai').pro }
   end,
 },
}
