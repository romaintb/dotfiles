local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'Catppuccin Mocha'
config.font = wezterm.font 'FiraCode Nerd Font Mono'
config.max_fps = 165

return config
