-- ============================================
-- 1. CARREGA AS OPÇÕES PADRÃO DO NVCHAD
-- ============================================
require "nvchad.options"

-- ============================================
-- 2. ATALHOS ÚTEIS PARA AS TABELAS DO VIM
-- ============================================
local o = vim.o      -- opções globais (number, wrap, etc.)
local opt = vim.opt  -- opções com comportamento de lista
local g = vim.g      -- variáveis globais

-- ============================================
-- 3. APARÊNCIA
-- ============================================

-- Já vem ativo no NvChad, mas você pode customizar:
o.cursorline = true
o.cursorlineopt = "both"  -- "line" | "screenline" | "number" | "both"

-- Números de linha
-- o.number = true
o.relativenumber = true  -- descomente se quiser números relativos

-- ============================================
-- 4. INDENTAÇÃO (o NvChad já define tabstop=2, etc.)
-- ============================================

-- Se quiser mudar para 4 espaços (ex: Python):
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4

-- ============================================
-- 5. COMPORTAMENTO
-- ============================================

o.wrap = false              -- não quebra linha automaticamente
-- o.scrolloff = 8             -- mantém 8 linhas visíveis ao redor do cursor
-- o.sidescrolloff = 8         -- mantém 8 colunas visíveis
o.mouse = "a"               -- habilita mouse em todos os modos
opt.clipboard = "unnamedplus" -- usa o clipboard do sistema

-- Desabilita arquivos de swap/backup
opt.swapfile = false
opt.backup = false

-- Undo persistente (mantém histórico entre sessões)
opt.undofile = true

-- ============================================
-- 6. BUSCA
-- ============================================

opt.ignorecase = true   -- busca ignora maiúsculas/minúsculas
opt.smartcase = true    -- ...a menos que você digite uma maiúscula
opt.hlsearch = true     -- destaca todos os resultados

-- ============================================
-- 7. DIVISÃO DE JANELAS
-- ============================================

o.splitbelow = true     -- split horizontal abre para baixo
o.splitright = true     -- split vertical abre para a direita

-- ============================================
-- 8. PERFORMANCE / TEMPO
-- ============================================

o.updatetime = 250      -- tempo para triggers automáticos (LSP, etc.)
o.timeoutlen = 400      -- tempo para completar atalhos
