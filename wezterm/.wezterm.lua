local wezterm = require("wezterm")

-- Config
local config = wezterm.config_builder()

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 11

config.enable_tab_bar = true
config.window_decorations = "RESIZE"

local dimmer = { brightness = 0.04, saturation = 0.8, hue = 1.3 }
config.background = {
    {
        source = {
            File = "/home/umbalaxx/Pictures/fantasy-water-representation.jpg"
        },
        opacity = 1,
        hsb = dimmer
    }
}
config.color_scheme = "Calamity"
-- config.window_background_opacity = 0.95

config.initial_cols = 150
config.initial_rows = 40

-- Spawn a fish shell in login mode
config.default_prog = { "/usr/bin/zsh" }

return config