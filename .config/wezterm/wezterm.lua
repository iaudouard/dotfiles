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

config.keys = {
	-- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
	{ key = "LeftArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bb" }) },
	-- Make Option-Right equivalent to Alt-f; forward-word
	{ key = "RightArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bf" }) },
}

return config
