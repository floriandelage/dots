-- autostart.lua

hl.on("hyprland.start", function()
	hl.exec_cmd("swaylock")
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	hl.exec_cmd("waybar")
	hl.exec_cmd("swaybg -i ~/Pictures/Wallpapers/bunnies-road.png -m fill")
	hl.exec_cmd("hypridle")
	hl.exec_cmd("wl-paste --type text --watch cliphist store")
	hl.exec_cmd("wl-clip-persist --clipboard regular")
end)
