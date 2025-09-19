-- Pull in the wezterm API
local wezterm = require "wezterm"

-- This will hold the configuration
local config = wezterm.config_builder()

config.enable_scroll_bar = true
config.scrollback_lines = 50000

config.window_padding = {
    left = 10,
    right = 20,
    top = 5,
    bottom = 5,
}

config.font_dirs = { "Library/Fonts/" }
config.font = wezterm.font("Fantasque Sans Mono", {weight = "Medium", bold = true})
config.font_size = 13

local act = wezterm.action
-- to make cmd-d and cmd-shift-d pane split, respectively, and cmd-w to close
config.keys = {
    {
        key = "d",
        mods = "SUPER",
        action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
    },
    {
        key = "d",
        mods = "SUPER|SHIFT",
        action = act.SplitVertical({ domain = "CurrentPaneDomain"}),
    },
    {
        key = "w",
        mods = "SUPER",
        action = act.CloseCurrentPane({ confirm = false }),
    },
}

return config
