local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- color scheme
config.color_scheme = "Catppuccin Mocha"

-- font
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 14

-- window
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.8
config.macos_window_background_blur = 8

config.enable_tab_bar = false

return config
