local wezterm = require("wezterm")
local act = wezterm.action

local config = {}

config.default_prog = { "powershell.exe", "-NoLogo" }

-- Appearance
config.font = wezterm.font("JetBrains Mono")
config.font_size = 11.0
config.line_height = 1.35
config.window_padding = {
  left = 8,
  right = 8,
  top = 8,
  bottom = 8,
}
config.default_cursor_style = "BlinkingBar"

-- Keybindings for tabs and clipboard
config.keys = {
  { key = "1", mods = "CTRL|ALT", action = act.ActivateTab(0) },
  { key = "2", mods = "CTRL|ALT", action = act.ActivateTab(1) },
  { key = "3", mods = "CTRL|ALT", action = act.ActivateTab(2) },
  { key = "4", mods = "CTRL|ALT", action = act.ActivateTab(3) },
  { key = "5", mods = "CTRL|ALT", action = act.ActivateTab(4) },
  { key = "6", mods = "CTRL|ALT", action = act.ActivateTab(5) },
  { key = "7", mods = "CTRL|ALT", action = act.ActivateTab(6) },
  { key = "8", mods = "CTRL|ALT", action = act.ActivateTab(7) },
  { key = "9", mods = "CTRL|ALT", action = act.ActivateTab(8) },
  { key = "]", mods = "CTRL|ALT", action = act.ActivateTabRelative(1) },
  { key = "[", mods = "CTRL|ALT", action = act.ActivateTabRelative(-1) },
  { key = "c", mods = "CTRL|SHIFT", action = act.CopyTo "Clipboard" },
  { key = "v", mods = "CTRL|SHIFT", action = act.PasteFrom "Clipboard" },
}

-- Launch menu entries
config.launch_menu = {
  { label = "Helix", args = { "cmd.exe", "/k", "hx" } },
  { label = "Yazi", args = { "cmd.exe", "/k", "yazi" } },
--{ label = "Git (lazygit)", args = { "cmd.exe", "/k", "lazygit" } },
}

return config
