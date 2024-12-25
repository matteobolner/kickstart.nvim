return {
  'michaelb/sniprun',
  branch = 'master',

  build = 'sh install.sh',
  -- do 'sh install.sh 1' if you want to force compile locally
  -- (instead of fetching a binary from the github release). Requires Rust >= 1.65

  config = function()
    require('sniprun').setup {
      selected_interpreters = { 'Python3_fifo' },
      repl_enable = { 'Python3_fifo' },
      snipruncolors = {
        SniprunVirtualTextOk = { default = false, bg = '#669eff', fg = '#000000' },
      },
      display = {
        'NvimNotify',
        'VirtualTextOk',
        --'LongTempFloatingWindow',
        --'Terminal',
      },
      display_options = {
        notification_timeout = 5, -- in seconds
        notification_render = 'default', -- nvim-notify render style
        --terminal_position = 'horizontal', --# or "horizontal", to open as horizontal split instead of vertical split
        --terminal_width = 10, --# change the terminal display option width (if vertical)
        --terminal_height = 10, --# change the terminal display option height (if horizontal)
      }, -- your options
    }
    vim.api.nvim_set_keymap('v', '<leader>r', '<Plug>SnipRun', { silent = true })
    vim.api.nvim_set_keymap('n', '<leader>r', '<Plug>SnipRun', { silent = true })
    vim.api.nvim_set_keymap('n', '<leader>f', '<Plug>SnipRunOperator', { silent = true })
    vim.api.nvim_set_keymap('n', '<leader>p', '<Plug>SnipClose', { silent = true })
  end,
}
