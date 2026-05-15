-- Global Variables
local vars = require("vars")

------------------
---- MONITORS ----
------------------

hl.monitor({
	output = vars.monitor,
	mode = "preferred",
	position = "auto",
	scale = 1,
})

-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function()
	hl.exec_cmd(vars.terminal)
	hl.exec_cmd("nm-applet")
	hl.exec_cmd(vars.bar)
	hl.exec_cmd("awww-daemon")
	hl.exec_cmd("awww img " .. vars.imageWallpaper)
	hl.exec_cmd("mako &")
end)

hl.env("XCURSOR_THEME", vars.cursorTheme)
hl.env("XCURSOR_SIZE", vars.cursorSize)
hl.env("HYPRCURSOR_THEME", vars.cursorTheme)
hl.env("HYPRCURSOR_SIZE", vars.cursorSize)

hl.config({
	input = {
		kb_layout = "br",
	},
	general = {
		gaps_in = 2,
		gaps_out = 2,
		border_size = 2,
		col = { active_border = "#ed946f" },
	},
	decoration = {
		rounding = 16,
		rounding_power = 4,

		active_opacity = 1,
		inactive_opacity = 0.9,

		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			color = "#1a1a1aee",
		},

		blur = {
			enabled = true,
			size = 3,
			passes = 2,
			vibrancy = 0.1696,
		},
	},
})

require("binds")
