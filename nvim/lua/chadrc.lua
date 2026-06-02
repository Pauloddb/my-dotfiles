---@type ChadrcConfig
local M = {}

-- ============================================
-- TEMA
-- ============================================
M.base46 = {
  theme = "palenight",
  transparency = false, -- mude para true se quiser fundo transparente

  hl_override = {
    -- Type = { fg = "#FFCB6B" }, -- amarelo
    -- ["@type"] = { fg = "#FFCB6B" }, -- TreeSitter type
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },

  -- Integrações de plugins com o tema (descomente se usar)
  integrations = {
    "cmp",
    "telescope",
    "whichkey",
  },
}

-- ============================================
-- DASHBOARD (tela de boas-vindas)
-- ============================================
M.nvdash = {
  load_on_startup = true, -- mostra ao abrir nvim sem arquivo

  -- Cabeçalho (ASCII art). Pode ser uma string ou lista de strings
  header = {
    "           ▄ ▄                   ",
    "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
    "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
    "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
    "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
    "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
    "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
    "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
    "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█     ",
    "                                 ",
  },

  -- Botões do menu
  buttons = {
    { txt = "  Find File", keys = "Spc f f", cmd = "Telescope find_files" },
    { txt = "󰈚  Recent Files", keys = "Spc f o", cmd = "Telescope oldfiles" },
    { txt = "󰈭  Find Word", keys = "Spc f w", cmd = "Telescope live_grep" },
    { txt = "  Bookmarks", keys = "Spc m a", cmd = "Telescope marks" },
    { txt = "  Themes", keys = "Spc t h", cmd = "Telescope themes" },
    { txt = "  Mappings", keys = "Spc c h", cmd = "NvCheatsheet" },
  },
}

-- ============================================
-- UI (plugins visuais)
-- ============================================
M.ui = {
  -- Barra de status (inferior)
  statusline = {
    theme = "default", -- "default" | "minimal" | "vscode_colored"
    separator_style = "default", -- "default" | "round" | "block" | "arrow"
  },

  -- Abas de buffers (superior)
  tabufline = {
    enabled = true,
    lazyload = false, -- true = só aparece com 2+ buffers
  },

  -- Menu de autocompletion
  cmp = {
    style = "default", -- "default" | "flat" | "flat_light" | "atom" | "atom_colored"
  },

  -- Terminal integrado
  term = {
    sizes = { sp = 0.3, vsp = 0.2 },
    float = {
      row = 0.3,
      col = 0.25,
      width = 0.5,
      height = 0.4,
      border = "single",
    },
  },

  -- Tecla de atalho para cheatsheet
  cheatsheet = {
    theme = "grid", -- "grid" | "simple"
  },
}

-- ============================================
-- LSP (Language Server)
-- ============================================
M.lsp = {
  signature = true, -- mostra assinatura da função ao digitar
}

-- ============================================
-- TREESITTER (highlight de sintaxe)
-- ============================================
M.base46 = M.base46 or {}
M.base46.integrations = {
  "blankline",
  "cmp",
  "telescope",
  "whichkey",
}

return M
