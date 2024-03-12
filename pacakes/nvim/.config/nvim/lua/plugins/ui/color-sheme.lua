return {
  {
    -- 'tanvirtin/monokai.nvim',
    -- 'tomasr/molokai'
    'loctvl842/monokai-pro.nvim',
    config = function()
  require("monokai-pro").setup({
    transparent_background = true,
    terminal_colors = true,
    devicons = true,
    styles = {
      comment = { italic = true },
      keyword = { italic = true },
      type = { italic = true },
      storageclass = { italic = true },
      structure = { italic = true },
      parameter = { italic = true },
      annotation = { italic = true },
      tag_attribute = { italic = true },
    },
    filter = "pro",
    day_night = {
      enable = false,
      day_filter = "pro",
      night_filter = "spectrum",
    },
    inc_search = "background",
    background_clear = {
      "toggleterm",
      "telescope",
      "renamer",
      "notify",
      "oil",
    },
    plugins = {
      bufferline = {
        underline_selected = false,
        underline_visible = false,
      },
      indent_blankline = {
        context_highlight = "default",
        context_start_underline = false,
      },
    },
  })
end  },
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
          flavour = "mocha", -- テーマのフレーバーを指定します（latte、frappe、macchiato、mochaなど）。
          background = {
            light = "latte", -- 明るい背景の色を指定します。
            dark = "mocha", -- 暗い背景の色を指定します。
        },
        transparent_background = true, -- 背景色の透明度を設定します。
        show_end_of_buffer = false, -- バッファの終端に'~'文字を表示するかどうかを指定します。
        term_colors = false, -- ターミナルの色を設定するかどうかを指定します。
        dim_inactive = {
            enabled = false, -- 非アクティブなウィンドウの背景色を暗くするかどうかを指定します。
            shade = "dark", -- 暗くする場合の色調を指定します。
            percentage = 0.15, -- 非アクティブなウィンドウの色をどれだけ暗くするかの割合を指定します。
        },
        no_italic = false, -- イタリック体を無効にするかどうかを指定します。
        no_bold = false, -- 太字を無効にするかどうかを指定します。
        no_underline = false, -- アンダーラインを無効にするかどうかを指定します。
        styles = { -- 一般的なハイライトグループのスタイルを指定します。
            comments = { "italic" }, -- コメントのスタイルを指定します。
            conditionals = { "italic" }, -- 条件文のスタイルを指定します。
            -- 他のハイライトグループのスタイルも指定可能です。
        },
        color_overrides = {}, -- カラーオーバーライドを指定します。
        custom_highlights = {}, -- カスタムハイライトを指定します。
        integrations = {
            cmp = true, -- cmpプラグインとの統合を有効にするかどうかを指定します。
            gitsigns = true, -- gitsignsプラグインとの統合を有効にするかどうかを指定します。
            nvimtree = true, -- nvimtreeプラグインとの統合を有効にするかどうかを指定します。
            treesitter = true, -- treesitterプラグインとの統合を有効にするかどうかを指定します。
            notify = false, -- notifyプラグインとの統合を有効にするかどうかを指定します。
            mini = {
                enabled = true, -- miniウィンドウプラグインとの統合を有効にするかどうかを指定します。
                indentscope_color = "", -- インデントスコープの色を指定します。
            },
        },
    })
    vim.cmd([[colorscheme catppuccin]])
end
  },
}
