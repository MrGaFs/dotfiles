-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Macchiato"

config.font = wezterm.font("JetBrainsMono Nerd Font")

config.font_size = 19

config.enable_tab_bar = false

-- config.window_decorations = "REAl"
config.window_background_opacity = 0.90
config.macos_window_background_blur = 100

config.harfbuzz_features = { "zero", "ss01", "cs05" }

-- and finally, return the configuration to wezterm
return config
