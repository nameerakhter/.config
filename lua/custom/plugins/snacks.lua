return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nvim-telescope/telescope.nvim',
    'folke/noice.nvim',
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify', -- Add nvim-notify as dependency
  },
  init = function()
    -- Initialize Snacks globally
    _G.Snacks = require 'snacks'

    -- Set up notify with custom configuration
    local notify = require 'notify'
    notify.setup {
      background_colour = '#000000',
      fps = 60,
      icons = {
        DEBUG = '🤷‍♂️♂️',
        ERROR = '😥',
        INFO = '',
        TRACE = '✎',
        WARN = '',
      },
      level = 2,
      minimum_width = 50,
      render = 'default',
      stages = 'fade',
      timeout = 1000,
      top_down = true,
    }

    -- Set as default notify function
    vim.notify = notify

    vim.api.nvim_create_autocmd('User', {
      pattern = 'OilActionsPost',
      callback = function(event)
        if event.data.actions.type == 'move' then
          Snacks.rename.on_rename_file(event.data.actions.src_url, event.data.actions.dest_url)
        end
      end,
    })
  end,
  keys = {
    {
      '<leader>bd',
      function()
        Snacks.bufdelete()
      end,
      desc = 'Buffer delete',
      mode = 'n',
    },
    {
      '<leader>ba',
      function()
        Snacks.bufdelete.all()
      end,
      desc = 'Buffer delete all',
      mode = 'n',
    },
    {
      '<leader>bo',
      function()
        Snacks.bufdelete.other()
      end,
      desc = 'Buffer delete other',
      mode = 'n',
    },
    {
      '<leader>bz',
      function()
        Snacks.zen()
      end,
      desc = 'Toggle Zen Mode',
      mode = 'n',
    },
    {
      '<leader>fn',
      ':Telescope notify<CR>',
      desc = 'Find in notification history',
      mode = 'n',
    },
    {
      '<leader>nc',
      function()
        require('notify').dismiss { silent = true, pending = true }
      end,
      desc = 'Clear notifications',
      mode = 'n',
    },
    {
      '<leader>nh',
      ':Notifications<CR>',
      desc = 'Notification history',
      mode = 'n',
    },
  },
  opts = {
    bigfile = { enabled = true },
    dashboard = {
      preset = {
        pick = nil,
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = ' ', key = 'f', desc = 'Find File', action = ":lua Snacks.dashboard.pick('files')" },
          { icon = ' ', key = 'n', desc = 'New File', action = ':ene | startinsert' },
          { icon = ' ', key = 'g', desc = 'Find Text', action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = ' ', key = 'r', desc = 'Recent Files', action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = ' ', key = 'c', desc = 'Config', action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = ' ', key = 's', desc = 'Restore Session', section = 'session' },
          { icon = '󰒲 ', key = 'l', desc = 'Lazy', action = ':Lazy', enabled = package.loaded.lazy ~= nil },
          { icon = ' ', key = 'q', desc = 'Quit', action = ':qa' },
        },
        header = [[
                                                                               
                 ████ ██████           █████      ██                     
                ███████████             █████                             
                █████████ ███████████████████ ███   ███████████   
               █████████  ███    █████████████ █████ ██████████████   
              █████████ ██████████ █████████ █████ █████ ████ █████   
            ███████████ ███    ███ █████████ █████ █████ ████ █████  
           ██████  █████████████████████ ████ █████ █████ ████ ██████ 
        ]],
      },
      sections = {
        { section = 'header' },
        {
          section = 'keys',
          indent = 1,
          padding = 1,
        },
        { section = 'recent_files', icon = ' ', title = 'Recent Files', indent = 3, padding = 2 },
        { section = 'startup' },
      },
    },
    explorer = { enabled = false },
    indent = { enabled = true },
    input = { enabled = false },
    picker = { enabled = false },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = false },
    statuscolumn = { enabled = false },
    words = { enabled = false },
    rename = { enabled = true },
    zen = {
      enabled = true,
      toggles = {
        ufo = false,
        dim = true,
        git_signs = false,
        diagnostics = false,
        line_number = false,
        relative_number = false,
        signcolumn = 'no',
        indent = false,
      },
    },
  },
  config = function(_, opts)
    require('snacks').setup(opts)

    -- Snacks.toggle.new {
    --   id = 'ufo',
    --   name = 'Enable/Disable ufo',
    --   get = function()
    --     return require('ufo').inspect()
    --   end,
    --   set = function(state)
    --     if state == nil then
    --       require('noice').enable()
    --       require('ufo').enable()
    --       vim.o.foldenable = true
    --       vim.o.foldcolumn = '1'
    --     else
    --       require('noice').disable()
    --       require('ufo').disable()
    --       vim.o.foldenable = false
    --       vim.o.foldcolumn = '0'
    --     end
    --   end,
    -- }
  end,
}
