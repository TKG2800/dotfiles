return {
        "folke/noice.nvim",
        event = "VeryLazy",
        dependencies = {
          "MunifTanjim/nui.nvim",
          "rcarriga/nvim-notify",
        },
        config = function()
          require("noice").setup({
                  messages = {
                    enabled = false,
                    view = "messages",
                    view_error = "mini",
                    view_warn = "mini",
                    view_error = "mini",
                  },
                  lsp = {
                    override = {
                            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                            ["vim.lsp.util.stylize_markdown"] = true,
                            ["cmp.entry.get_documentation"] = true,
                    },
                  },
                  presets = {
				                  long_message_to_split = true,
				                  lsp_doc_border = true,
			            },
          })
        end,
        keys = {
          { "<leader>nn", ":Noice<CR>",desc = "Noice", silent = true },
          { "<leader>ne", ":NoiceErrors<CR>", desc = "Errors", silent = true },
          { "<leader>nl", ":NoiceLast<CR>", desc = "Last", silent = true },
          { "<leader>nd", ":NoiceDismiss<CR>", desc = "Dismiss", silent = true },
        },
}
