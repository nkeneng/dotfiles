-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.color_scheme = 'Tokyo Night'

-- This is where you actually apply your config choices

-- my coolnight colorscheme
-- config.colors = {
-- 	-- foreground = "#CBE0F0",
-- 	-- background = "#000000",
-- 	-- cursor_bg = "#47FF9C",
-- 	-- cursor_border = "#47FF9C",
-- 	-- cursor_fg = "#011423",
-- 	-- selection_bg = "#033259",
-- 	-- selection_fg = "#CBE0F0",
-- 	-- ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
-- 	-- brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
-- }


config.keys = {
  {
    key = 'w',
    mods = 'CMD',
    action = wezterm.action.CloseCurrentPane { confirm = false },
  },
}


config.font = wezterm.font("JetbrainsMono Nerd Font")
config.font_size = 19

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
-- config.window_background_opacity = 0.75
-- config.macos_window_background_blur = 20

-- and finally, return the configuration to wezterm
return config
