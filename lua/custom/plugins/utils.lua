return {
  -- Sync clipboard between OS and Neovim.
  --  Schedule the setting after `UiEnter` because it can increase startup-time.
  --  Remove this option if you want your OS clipboard to remain independent.
  --  See `:help 'clipboard'`
  vim.schedule(function()
    -- WSL2 Clipboard Sync
    vim.g.clipboard = {
      name = 'win32yank-wsl',
      copy = {
        ['+'] = '/mnt/c/ProgramData/chocolatey/bin/win32yank.exe -i --crlf',
        ['*'] = '/mnt/c/ProgramData/chocolatey/bin/win32yank.exe -i --crlf',
      },
      paste = {

        ['+'] = '/mnt/c/ProgramData/chocolatey/bin/win32yank.exe -o --lf',
        ['*'] = '/mnt/c/ProgramData/chocolatey/bin/win32yank.exe -o --lf',
      },
      cache_enable = 0,
    }
  end),
}
