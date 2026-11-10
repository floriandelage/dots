-- binds.lua

local mainMod = "SUPER"
local terminal = "foot"
local menu = "rofi"

-- System
hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.exit(), { description = "Exit Hyprland" })
hl.bind(mainMod .. " + SHIFT + B", hl.dsp.exec_cmd("killall -SIGUSR2 waybar"), { description = "Reload Waybar" })
hl.bind(
	mainMod .. " + V",
	hl.dsp.exec_cmd("cliphist list | rofi -dmenu -display-columns 2 | cliphist decode | wl-copy")
)
hl.bind(
	mainMod .. " + Escape",
	hl.dsp.exec_cmd(menu .. " -show power-menu -modi power-menu:rofi-power-menu"),
	{ description = "Open Power Menu" }
)

-- Apps
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal), { description = "Open Terminal" })
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(menu .. " -show drun"), { description = "Open Menu" })

-- Focus
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }), { description = "Focus Left" })
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }), { description = "Focus Down" })
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }), { description = "Focus Up" })
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }), { description = "Focus Right" })
hl.bind(mainMod .. " + code:10", hl.dsp.focus({ workspace = 1 }), { descritption = "Focus Workspace 1" })
hl.bind(mainMod .. " + code:11", hl.dsp.focus({ workspace = 2 }), { descritption = "Focus Workspace 2" })
hl.bind(mainMod .. " + code:12", hl.dsp.focus({ workspace = 3 }), { descritption = "Focus Workspace 3" })
hl.bind(mainMod .. " + code:13", hl.dsp.focus({ workspace = 4 }), { descritption = "Focus Workspace 4" })
hl.bind(mainMod .. " + code:14", hl.dsp.focus({ workspace = 5 }), { descritption = "Focus Workspace 5" })
hl.bind(mainMod .. " + code:15", hl.dsp.focus({ workspace = 6 }), { descritption = "Focus Workspace 6" })
hl.bind(mainMod .. " + code:16", hl.dsp.focus({ workspace = 7 }), { descritption = "Focus Workspace 7" })
hl.bind(mainMod .. " + code:17", hl.dsp.focus({ workspace = 8 }), { descritption = "Focus Workspace 8" })
hl.bind(mainMod .. " + code:18", hl.dsp.focus({ workspace = 9 }), { descritption = "Focus Workspace 9" })
hl.bind(mainMod .. " + code:19", hl.dsp.focus({ workspace = 10 }), { descritption = "Focus Workspace 10" })
hl.bind(mainMod .. " + code:49", hl.dsp.focus({ last = true }), { description = "Focus Last" })

-- Move
hl.bind(mainMod .. " + C", hl.dsp.window.center(), { description = "Center Window" })
hl.bind(mainMod .. " + Q", hl.dsp.window.close(), { description = "Close Window" })
hl.bind(mainMod .. " + T", hl.dsp.window.float({ action = "toggle" }), { description = "Toggle Floating Window" })
hl.bind(
	mainMod .. " + F",
	hl.dsp.window.fullscreen({ action = "toggle" }),
	{ description = "Toggle Fullscreen Window" }
)
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" }), { description = "Move Left" })
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }), { description = "Move Down" })
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }), { description = "Move Up" })
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }), { description = "Move Right" })
hl.bind(mainMod .. " + SHIFT + code:10", hl.dsp.window.move({ workspace = 1 }), { descritption = "Move Workspace 1" })
hl.bind(mainMod .. " + SHIFT + code:11", hl.dsp.window.move({ workspace = 2 }), { descritption = "Move Workspace 2" })
hl.bind(mainMod .. " + SHIFT + code:12", hl.dsp.window.move({ workspace = 3 }), { descritption = "Move Workspace 3" })
hl.bind(mainMod .. " + SHIFT + code:13", hl.dsp.window.move({ workspace = 4 }), { descritption = "Move Workspace 4" })
hl.bind(mainMod .. " + SHIFT + code:14", hl.dsp.window.move({ workspace = 5 }), { descritption = "Move Workspace 5" })
hl.bind(mainMod .. " + SHIFT + code:15", hl.dsp.window.move({ workspace = 6 }), { descritption = "Move Workspace 6" })
hl.bind(mainMod .. " + SHIFT + code:16", hl.dsp.window.move({ workspace = 7 }), { descritption = "Move Workspace 7" })
hl.bind(mainMod .. " + SHIFT + code:17", hl.dsp.window.move({ workspace = 8 }), { descritption = "Move Workspace 8" })
hl.bind(mainMod .. " + SHIFT + code:18", hl.dsp.window.move({ workspace = 9 }), { descritption = "Move Workspace 9" })
hl.bind(mainMod .. " + SHIFT + code:19", hl.dsp.window.move({ workspace = 10 }), { descritption = "Move Workspace 10" })

-- Resize
hl.bind(
	mainMod .. " + CTRL + H",
	hl.dsp.window.resize({ x = -50, y = 0, relative = true }),
	{ description = "Resize Left" }
)
hl.bind(
	mainMod .. " + CTRL + J",
	hl.dsp.window.resize({ x = 0, y = -50, relative = true }),
	{ description = "Resize Down" }
)
hl.bind(
	mainMod .. " + CTRL + K",
	hl.dsp.window.resize({ x = 0, y = 50, relative = true }),
	{ description = "Resize Up" }
)
hl.bind(
	mainMod .. " + CTRL + L",
	hl.dsp.window.resize({ x = 50, y = 0, relative = true }),
	{ description = "Resize Right" }
)

-- Master Layout
hl.bind(mainMod .. " + Z", hl.dsp.layout("swapwithmaster master"))
hl.bind(mainMod .. " + A", hl.dsp.layout("addmaster"))
hl.bind(mainMod .. " + E", hl.dsp.layout("removemaster"))
hl.bind(mainMod .. " + N", hl.dsp.layout("cyclenext"))
hl.bind(mainMod .. " + SHIFT + N", hl.dsp.layout("cycleprev"))

-- Multimedia
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true },
	{ description = "Raise Volume" }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true },
	{ description = "Lower Volume" }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true },
	{ description = "Audio Mute" }
)
hl.bind(
	"XF86MonBrightnessUp",
	hl.dsp.exec_cmd("brightnessctl set 5%+"),
	{ locked = true, repeating = true },
	{ description = "Brightness Up" }
)
hl.bind(
	"XF86MonBrightnessDown",
	hl.dsp.exec_cmd("brightnessctl set 5%-"),
	{ locked = true, repeating = true },
	{ description = "Brightness Down" }
)

-- Screenshots
hl.bind(
	"Print",
	hl.dsp.exec_cmd([[sh -c 'g=$(slurp) && grim -g "$g" - | wl-copy && notify-send "Screenshot" "Region copied"']])
)
hl.bind(
	mainMod .. " + Print",
	hl.dsp.exec_cmd([[sh -c 'grim - | wl-copy && notify-send "Screenshot" "Screen copied"']])
)
