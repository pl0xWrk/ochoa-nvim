-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if prefer nvim-web-devicons
  },
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('bufferline').setup {} -- bufferline
    end,
    vim.keymap.set('n', '<C-K>', ':BufferLineCycleNext<CR>', { desc = 'Next tab' }),
    vim.keymap.set('n', '<C-J>', ':BufferLineCyclePrev<CR>', { desc = 'Previous tab' }),
  },
}
