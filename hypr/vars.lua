local M = {}

-- Modkey
M.mainMod = "SUPER"

M.terminal = "kitty"
M.fileManager = "dolphin"
M.browser = "zen-browser"
M.menu = "rofi -show drun"
M.bar = "qs -c ~/code/quickshell/bar/"
M.toggleBar = "pgrep -x qs >/dev/null && pkill qs || " .. M.bar .. " >/dev/null 2>&1 &"

M.monitor = "eDP-1"
M.colorPicker = "hyprpicker -a >/dev/null"
M.cursorTheme = "Bibata-Modern-Ice"
M.cursorSize = 24
M.workspaces = 9

M.accentColor = "#ec936f"
M.backgroundColor = "#292d3e"

-- Wallpaper
M.imageWallpaper = "/home/paulo/Pictures/wallpapers/static/celeste.png"
M.videoWallpaper = "/home/paulo/Pictures/wallpapers/animated/denji.mp4"

local wallpaperType = "image"

if wallpaperType == "image" then
	M.wallpaperCmd = "awww img " .. M.imageWallpaper
elseif wallpaperType == "video" then
	M.wallpaperCmd = "mpvpaper -f -o \"--loop --no-audio --hwdec=auto\" '*' " .. M.videoWallpaper
end

return M
