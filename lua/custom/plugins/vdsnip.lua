-- Live VisiData view of polars dataframes produced by sniprun's Python3_fifo kernel.
-- Python half is installed separately into your project venv:
--   uv add "vdsnip @ git+https://github.com/matteobolner/vdsnip"
return {
  'matteobolner/vdsnip',
  -- Load eagerly (but after UI) so $VDSNIP_PATH is exported before the sniprun
  -- kernel starts, keeping the Lua and Python halves in agreement.
  event = 'VeryLazy',
  config = function()
    require('vdsnip').setup {
      -- path = '/tmp/sniprun_vd.arrow',      -- shared Arrow file (also $VDSNIP_PATH)
      -- open = 'botright split | resize 20', -- or 'vsplit' / 'tabnew'
      -- keymap = '<leader>vd',               -- false to skip
      -- debounce = 80,                       -- ms
    }
  end,
}
