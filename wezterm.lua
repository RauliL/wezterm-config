local wezterm = require 'wezterm'

function font_with_fallback(name, params)
  local names = {name, 'FiraCode Nerd Font Mono'}

  return wezterm.font_with_fallback(names, params)
end

return {
  color_scheme = 'Afterglow',
  font = font_with_fallback('Comic Mono'),
  font_antialias = 'Subpixel',
  font_dirs = {'fonts'},
  font_rules = {
    {
      intensity = 'Bold',
      font = font_with_fallback('Comic Mono Bold'),
    },
  },
  font_size = 13.0,
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
  mouse_bindings = {
    {
      event = {
        Down = {
          streak = 1,
          button = 'Left',
        },
      },
      mods = 'NONE',
      action = wezterm.action{SelectTextAtMouseCursor='Cell'},
    },
    {
      event = {
        Down = {
          streak = 2,
          button = 'Left',
        },
      },
      mods = 'NONE',
      action = wezterm.action{SelectTextAtMouseCursor='Word'},
    },
    {
      event = {
        Down = {
          streak = 3,
          button = 'Left',
        },
      },
      mods = 'NONE',
      action = wezterm.action{SelectTextAtMouseCursor='Line'},
    },
    {
      event = {
        Up = {
          streak = 1,
          button = 'Left',
        },
      },
      mods = 'NONE',
      action = wezterm.action{CompleteSelectionOrOpenLinkAtMouseCursor='PrimarySelection'},
    },
    {
      event = {
        Down = {
          streak = 1,
          button = 'Middle',
        },
      },
      mods = 'NONE',
      action = 'Paste',
    },
  },
}
