local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'Catppuccin Mocha'
config.font = wezterm.font('FiraCode Nerd Font', { weight = 'Medium' })
config.underline_position = -2
config.max_fps = 165
config.enable_tab_bar = false

return config
