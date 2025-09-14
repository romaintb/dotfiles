local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'Catppuccin Macchiato'
config.font = wezterm.font('FiraCode Nerd Font', { weight = 'Medium' })
config.font_size = 9.0
config.underline_position = -2
config.max_fps = 165
config.enable_tab_bar = false
config.cursor_blink_rate = 0
config.warn_about_missing_glyphs = false
config.colors = {
  foreground = 'white'
}

return config
