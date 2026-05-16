local vars = require("vars")

hl.bind(vars.mainMod .. " + SPACE", hl.dsp.exec_cmd(vars.menu))
hl.bind(vars.mainMod .. " + RETURN", hl.dsp.exec_cmd(vars.terminal))
hl.bind(vars.mainMod .. " + E", hl.dsp.exec_cmd(vars.fileManager))
hl.bind(vars.mainMod .. " + ALT + P", hl.dsp.exec_cmd(vars.colorPicker))
hl.bind(vars.mainMod .. " + B", hl.dsp.exec_cmd(vars.browser))
hl.bind(vars.mainMod .. " + W", hl.dsp.exec_cmd(vars.toggleBar))

for i = 1, vars.workspaces do
	hl.bind("SUPER + " .. i, hl.dsp.focus({ workspace = i }))
end

for i = 1, vars.workspaces do
	hl.bind(vars.mainMod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end

hl.bind(vars.mainMod .. " + Q", hl.dsp.window.close())

-- Foco para janela à esquerda
hl.bind("SUPER + LEFT", hl.dsp.focus({ direction = "l" }))

-- Foco para janela à direita
hl.bind("SUPER + RIGHT", hl.dsp.focus({ direction = "r" }))

-- Foco para janela acima
hl.bind("SUPER + UP", hl.dsp.focus({ direction = "u" }))

-- Foco para janela abaixo
hl.bind("SUPER + DOWN", hl.dsp.focus({ direction = "d" }))
