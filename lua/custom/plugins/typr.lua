return {
  'nvzone/typr',
  dependencies = {
    'nvzone/volt', -- Required dependency for UI components
  },
  -- Use cmd to lazy-load the plugin only when you actually want to practice
  cmd = { 'Typr', 'TyprStats' },
  opts = {
    -- You can add internal typr configurations here
    -- For example: winbar = true, or kbd_layout = "qwerty"
  },
  config = function(_, opts)
    require('typr').setup(opts)

    -- Define keymaps within the config function
    vim.keymap.set('n', '<leader>tt', '<cmd>Typr<cr>', { desc = '[T]ypr [T]est' })
    vim.keymap.set('n', '<leader>ts', '<cmd>TyprStats<cr>', { desc = '[T]ypr [S]tats' })
  end,
}
