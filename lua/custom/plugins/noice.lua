return {
  'folke/noice.nvim',

  event = 'VeryLazy',
  opts = {
    lsp = {
      -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
      override = {
        ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
        ['vim.lsp.util.stylize_markdown'] = true,
        ['cmp.entry.get_documentation'] = true,
      },
    },
    presets = {
      bottom_search = true,
      command_palette = true,
      long_message_to_split = true,
      inc_rename = false,
      lsp_doc_border = false,
    },
    routes = {
      {
        filter = {
          event = 'msg_show',
          kind = '',
          find = 'written',
        },
        opts = { skip = true },
      },
    },
    -- notify = {
    --   -- Display notifications in the top right
    --   position = {
    --     row = 1,
    --     col = '99%',
    --   },
    -- },
    -- -- Configuration for notification messages
    -- messages = {
    --   -- Animation style
    --   view = 'notify',
    --   -- Position of the notification window
    --   view_error = 'notify',
    --   view_warn = 'notify',
    --   view_history = 'messages',
    --   view_search = 'virtualtext',
    -- },
  },
  keys = {
    {
      '<leader>nd',
      function()
        require('notify').dismiss { silent = true, pending = true }
      end,
      desc = 'Dismiss all Notifications',
    },
  },
  dependencies = {
    'MunifTanjim/nui.nvim',
  },
}
