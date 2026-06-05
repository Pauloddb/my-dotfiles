local vars = require("vars")

hl.bind(vars.mainMod .. " + SPACE", hl.dsp.exec_cmd(vars.menu))
hl.bind(vars.mainMod .. " + RETURN", hl.dsp.exec_cmd(vars.terminal))
hl.bind(vars.mainMod .. " + E", hl.dsp.exec_cmd(vars.fileManager))
hl.bind(vars.mainMod .. " + ALT + P", hl.dsp.exec_cmd(vars.colorPicker))
hl.bind(vars.mainMod .. " + B", hl.dsp.exec_cmd(vars.browser))
hl.bind(vars.mainMod .. " + W", hl.dsp.exec_cmd(vars.toggleBar))
hl.bind(vars.mainMod .. " + ALT + W", hl.dsp.exec_cmd(vars.wallpaperCmd))

for i = 1, vars.workspaces do
	hl.bind("SUPER + " .. i, hl.dsp.focus({ workspace = i }))
end

for i = 1, vars.workspaces do
	hl.bind(vars.mainMod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end

-- Mover janela: SUPER + botão esquerdo do mouse
hl.bind(vars.mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })

-- Redimensionar janela: SUPER + botão direito do mouse
hl.bind(vars.mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind(vars.mainMod .. " + Q", hl.dsp.window.close())

-- Foco para janela à esquerda
hl.bind("SUPER + LEFT", hl.dsp.focus({ direction = "l" }))

-- Foco para janela à direita
hl.bind("SUPER + RIGHT", hl.dsp.focus({ direction = "r" }))

-- Foco para janela acima
hl.bind("SUPER + UP", hl.dsp.focus({ direction = "u" }))

-- Foco para janela abaixo
hl.bind("SUPER + DOWN", hl.dsp.focus({ direction = "d" }))

-- ============================================
-- CONTROLE DE VOLUME
-- ============================================

-- Aumentar volume (segurar para repetir)
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { repeating = true })

-- Diminuir volume (segurar para repetir)
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { repeating = true })

-- Mute do áudio (funciona mesmo com tela bloqueada)
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })

-- Mute do microfone (opcional)
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })

-- ============================================
-- CONTROLE DE MÍDIA (requer playerctl)
-- ============================================

-- Play/Pause
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })

-- Faixa anterior
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- Próxima faixa
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
