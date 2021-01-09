local wezterm = require 'wezterm'

return {
  color_scheme = 'Afterglow',
  -- disable_default_key_bindings = true,
  disable_default_mouse_bindings = true,
  font_antialias = 'Subpixel',
  font_dirs = {'fonts'},
  font = wezterm.font_with_fallback({
    'DejaVu Sans Mono',
    'FiraCode Nerd Font Mono',
  }),
  font_size = 12.0,
  keys = {
    {
      key = 'Insert',
      mods = 'SHIFT',
      action = 'Paste',
    },
    {
      key = 'c',
      mods = 'CTRL | SHIFT',
      action = 'Copy',
    },
    {
      key = 'v',
      mods = 'CTRL | SHIFT',
      action = 'Paste',
    },
    {
      key = 'x',
      mods = 'CTRL | SHIFT',
      action = 'ActivateCopyMode',
    },
    {
      key = 'PageUp',
      mods = 'SHIFT',
      action = wezterm.action{ScrollByPage=-1},
    },
    {
      key = 'PageDown',
      mods = 'SHIFT',
      action = wezterm.action{ScrollByPage=1},
    },
    {
      key = '+',
      mods = 'CTRL | SHIFT',
      action = 'IncreaseFontSize',
    },
    {
      key = '-',
      mods = 'CTRL | SHIFT',
      action = 'DecreaseFontSize',
    },
    {
      key = 't',
      mods = 'CTRL | SHIFT',
      action = wezterm.action{SpawnTab='CurrentPaneDomain'},
    },
    {
      key = 'w',
      mods = 'CTRL | SHIFT',
      action = wezterm.action{CloseCurrentTab={confirm=true}},
    },
    {
      key = 'LeftArrow',
      mods = 'CTRL | SHIFT',
      action = wezterm.action{ActivateTabRelative=-1},
    },
    {
      key = 'RightArrow',
      mods = 'CTRL | SHIFT',
      action = wezterm.action{ActivateTabRelative=1},
    },
    {
      key = 'PageUp',
      mods = 'CTRL | SHIFT',
      action = wezterm.action{MoveTabRelative=-1},
    },
    {
      key = 'PageDown',
      mods = 'CTRL | SHIFT',
      action = wezterm.action{MoveTabRelative=1},
    },
  },
  -- mouse_bindings = {
  --  {
  --    event = {
  --      Down = {
  --        button = 'Middle',
  --        streak = 1,
  --      },
  --    },
  --    mods = 'NONE',
  --    action = 'Paste',
  --  },
  -- },
}
