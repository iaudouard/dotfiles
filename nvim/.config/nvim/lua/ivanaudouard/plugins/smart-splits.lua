return {
  'mrjones2014/smart-splits.nvim',
  lazy = false,
  config = function()
    --
    -- resizing splits
    vim.keymap.set('n', '<A-C-h>', require('smart-splits').resize_left, { noremap = true, silent = true, desc = 'Smart Splits Resize Left' })
    vim.keymap.set('n', '<A-C-j>', require('smart-splits').resize_down, { noremap = true, silent = true, desc = 'Smart Splits Resize Down' })
    vim.keymap.set('n', '<A-C-k>', require('smart-splits').resize_up, { noremap = true, silent = true, desc = 'Smart Splits Resize Up' })
    vim.keymap.set('n', '<A-C-l>', require('smart-splits').resize_right, { noremap = true, silent = true, desc = 'Smart Splits Resize Right' })

    -- moving between splits
    vim.keymap.set('n', '<C-h>', require('smart-splits').move_cursor_left)
    vim.keymap.set('n', '<C-j>', require('smart-splits').move_cursor_down)
    vim.keymap.set('n', '<C-k>', require('smart-splits').move_cursor_up)
    vim.keymap.set('n', '<C-l>', require('smart-splits').move_cursor_right)
  end,
}
