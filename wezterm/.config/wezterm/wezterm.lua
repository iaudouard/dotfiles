local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- color scheme
config.color_scheme = "No Clown Fiesta"

config.color_schemes = {
	["No Clown Fiesta"] = {
		foreground = "#E1E1E1",
		background = "#262626",

		cursor_fg = "#151515",
		cursor_bg = "#D0D0D0",
		cursor_border = "#D0D0D0",

		selection_fg = "#151515",
		selection_bg = "#AFAFAF",

		scrollbar_thumb = "#373737",
		split = "#2b2b2b",

		compose_cursor = "#FFA557",

		ansi = {
			"#262626",
			"#b46958",
			"#90A959",
			"#F4BF75",
			"#BAD7FF",
			"#AA749F",
			"#88afa2",
			"#E1E1E1",
		},

		brights = {
			"#373737",
			"#984936",
			"#A7C874",
			"#FFD28F",
			"#A2B5C1",
			"#AA759F",
			"#A8C6BA",
			"#FFFFFF",
		},

		indexed = {
			[136] = "#ab8550",
		},

		copy_mode_active_highlight_bg = { Color = "#000000" },
		copy_mode_active_highlight_fg = { AnsiColor = "White" },
		copy_mode_inactive_highlight_bg = { Color = "#363a3c" },
		copy_mode_inactive_highlight_fg = { AnsiColor = "White" },

		quick_select_label_bg = { Color = "#FFA557" },
		quick_select_label_fg = { Color = "#151515" },
		quick_select_match_bg = { Color = "#363c36" },
		quick_select_match_fg = { Color = "#E1E1E1" },

		-- input_selector_label_bg = { AnsiColor = 'Black' },
		-- input_selector_label_fg = { Color = '#ffffff' },
		--
		-- launcher_label_bg = { AnsiColor = 'Black' },
		-- launcher_label_fg = { Color = '#ffffff' },
	},
}

-- font
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 14

-- window
config.window_decorations = "RESIZE"

config.enable_tab_bar = false

config.keys = {
	-- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
	{ key = "LeftArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bb" }) },
	-- Make Option-Right equivalent to Alt-f; forward-word
	{ key = "RightArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bf" }) },
}

return config
