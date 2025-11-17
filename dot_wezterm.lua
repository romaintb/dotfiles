local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Define Dracula Soft color scheme
config.color_schemes = {
  ['Dracula Soft'] = {
    foreground = '#e9e9f4',
    background = '#282a36',
    cursor_bg = '#f8f8f2',
    cursor_border = '#f8f8f2',
    cursor_fg = '#282a36',
    selection_bg = '#44475a',
    selection_fg = '#e9e9f4',

    ansi = {
      '#21222c', -- black
      '#e8616a', -- red (soft)
      '#8aff80', -- green (soft)
      '#ffca80', -- yellow (soft)
      '#bd93f9', -- blue
      '#ff79c6', -- magenta
      '#8be9fd', -- cyan
      '#e9e9f4', -- white (soft)
    },

    brights = {
      '#6272a4', -- bright black
      '#e8616a', -- bright red (soft)
      '#8aff80', -- bright green (soft)
      '#ffca80', -- bright yellow (soft)
      '#bd93f9', -- bright blue
      '#ff79c6', -- bright magenta
      '#8be9fd', -- bright cyan
      '#f7f7fb', -- bright white
    },
  },
}

-- Dynamic theme switching based on current working directory
wezterm.on('update-status', function(window, pane)
  local cwd = pane:get_current_working_dir()
  if cwd then
    local cwd_path = cwd.file_path or ''
    -- Check if we're in the cocoon-immo-bis directory
    if cwd_path:match('/work/cocoon%-immo%-bis') then
      window:set_config_overrides({
        color_scheme = 'Dracula Soft',
      })
    else
      window:set_config_overrides({
        color_scheme = 'Catppuccin Macchiato',
      })
    end
  end
end)

-- Default theme
config.color_scheme = 'Catppuccin Macchiato'
-- config.font = wezterm.font('FiraCode Nerd Font', { weight = 'Medium' })
config.font = wezterm.font('JetBrains Mono Nerd Font', { weight = 700 })
config.font_size = 9.0
config.underline_position = -2
config.max_fps = 165
config.enable_tab_bar = false
config.cursor_blink_rate = 0
config.warn_about_missing_glyphs = false

config.keys = {
  { key = "Enter", mods = "SHIFT", action = wezterm.action { SendString = "\x1b\r" } },
}

-- Mouse bindings to control scroll speed
config.mouse_bindings = {
  -- Scroll up with mouse wheel - 3 lines at a time
  {
    event = { Down = { streak = 1, button = { WheelUp = 1 } } },
    mods = 'NONE',
    action = wezterm.action.ScrollByLine(-3),
  },
  -- Scroll down with mouse wheel - 3 lines at a time
  {
    event = { Down = { streak = 1, button = { WheelDown = 1 } } },
    mods = 'NONE',
    action = wezterm.action.ScrollByLine(3),
  },
}

return config
