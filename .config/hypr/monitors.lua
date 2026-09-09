-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and supported resolutions with: hyprctl monitors all

local omarchy_gdk_scale = 1.6
local omarchy_monitor_scale = 1.6

hl.env("GDK_SCALE", tostring(omarchy_gdk_scale))
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = omarchy_monitor_scale })

-- Configure a specific monitor.
hl.monitor({ output = "DP-1", mode = "preferred", position = "auto-up", scale = 1.6 })
hl.monitor({ output = "HDMI-A-1", mode = "preferred", position = "auto-up", scale = 1.6 })

-- Portrait/rotated secondary monitor (transform: 1 = 90°, 3 = 270°).
-- hl.monitor({ output = "DP-2", mode = "preferred", position = "auto", scale = 1, transform = 1 })

-- Keep workspace 1 on the laptop screen; send every other workspace to the
-- external monitor whenever it's plugged in. When DP-1 isn't connected these
-- rules simply have no monitor to bind to, so workspaces fall back to eDP-1.
hl.workspace_rule({ workspace = "1", monitor = "eDP-1", default = true })
for workspace = 2, 10 do
	hl.workspace_rule({ workspace = tostring(workspace), monitor = "DP-1", default = workspace == 2 })
end

hl.workspace_rule({ workspace = "1", monitor = "HDMI-A-1", default = true })
for workspace = 2, 10 do
	hl.workspace_rule({ workspace = tostring(workspace), monitor = "HDMI-A-1", default = workspace == 2 })
end
