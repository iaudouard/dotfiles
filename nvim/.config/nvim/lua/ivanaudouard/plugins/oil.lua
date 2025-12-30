return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  dependencies = { { 'nvim-mini/mini.icons', opts = {} } },
  lazy = false,
  config = function()
    require('oil').setup()
    local function toggle_oil()
      local oil = require 'oil'
      -- if in an oil buffer, close it
      if vim.bo.filetype == 'oil' then
        oil.close()
      else
        oil.open()
      end
    end

    vim.keymap.set('n', '<leader>e', toggle_oil, { desc = 'Toggle Oil file explorer' })
  end,
}
