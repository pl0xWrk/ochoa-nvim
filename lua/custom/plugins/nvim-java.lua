return {
  'nvim-java/nvim-java',
  config = false,
  dependencies = {
    {
      'neovim/nvim-lspconfig',
      opts = {
        servers = {
          jdtls = {
            -- your jdtls configuration goes here
          },
        },
        setup = {
          jdtls = function()
            require('java').setup {
              -- your nvim-java configuration goes here
              on_attach = function()
                vim.keymap.set('n', '<C-F5>', ':JavaRunnerRunMain', { desc = 'Run Java application' })
              end,
            }
          end,
        },
      },
    },
  },
}
