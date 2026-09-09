-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
hl.unbind("SUPER + Q")
o.bind("SUPER + Q", "Close window", hl.dsp.window.close())

-- SUPER+H / SUPER+L to focus left/right window (vim-style)
o.bind("SUPER + H", "Focus on left window", hl.dsp.focus({ direction = "l" }))
hl.unbind("SUPER + L")
o.bind("SUPER + L", "Focus on right window", hl.dsp.focus({ direction = "r" }))

-- Swap Terminal/Tmux on SUPER+RETURN: plain terminal moves to ALT+RETURN,
-- and RETURN opens a terminal running tmux with a random session name.
hl.unbind("SUPER + RETURN")
hl.unbind("SUPER + ALT + RETURN")
o.bind("SUPER + ALT + RETURN", "Terminal", { omarchy = "terminal" })
o.bind("SUPER + RETURN", "Tmux", "omarchy-launch-terminal bash -c \"tmux new -s '$(funWords.sh)'\"")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")
